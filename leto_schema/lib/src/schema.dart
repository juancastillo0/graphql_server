library leto_schema.src.schema;

import 'dart:async';

import 'package:collection/collection.dart';
import 'package:gql/ast.dart';
import 'package:leto_schema/src/utilities/fetch_all_types.dart'
    show fetchAllNamedTypes;
import 'package:leto_schema/src/utilities/look_ahead.dart';
import 'package:leto_schema/src/utilities/predicates.dart';
import 'package:leto_schema/src/utilities/print_schema.dart';
import 'package:leto_schema/src/validate/ast_node_enum.dart';
import 'package:leto_schema/src/validate/validate_schema.dart';
import 'package:meta/meta.dart';
import 'package:meta/meta_meta.dart' show Target, TargetKind;
import 'package:source_span/source_span.dart' show FileSpan, SourceLocation;

export 'package:gql/ast.dart'
    show DocumentNode, FieldNode, OperationDefinitionNode, OperationType;

// TODO: 2A find a better way, maybe another leto_valida package?
export 'package:leto_schema/src/validate/valida_input_attachment.dart';
export 'package:leto_schema/utilities.dart'
    show PossibleSelections, PossibleSelectionsObject;

part 'argument.dart';

part 'decorators.dart';

part 'directive.dart';

part 'enum.dart';

part 'error.dart';

part 'field.dart';

part 'gen.dart';

part 'object_type.dart';

part 'req_ctx.dart';

part 'scalar.dart';

part 'serde_ctx.dart';

part 'type.dart';

part 'union.dart';

part 'validation_result.dart';

/// The schema against which queries, mutations and subscriptions are executed.
class GraphQLSchema {
  /// The shape which all queries against the server must take.
  final GraphQLObjectType<Object?>? queryType;

  /// The shape required for any query that changes the state of the server.
  final GraphQLObjectType<Object?>? mutationType;

  /// A [GraphQLObjectType] describing the form of data sent to
  /// real-time subscribers.
  ///
  /// Note that as of August 4th, 2018 (when this text was written),
  /// subscriptions are not formalized in the GraphQL specification.
  /// Therefore, any GraphQL implementation can potentially implement
  /// subscriptions in its own way.
  final GraphQLObjectType<Object?>? subscriptionType;

  /// Optional description for the schema
  final String? description;

  /// Supported directives in this schema.
  ///
  /// Default: [GraphQLDirective.specifiedDirectives]
  final List<GraphQLDirective> directives = [];

  /// Serialization and de-serialization context for [GraphQLType]s.
  /// Contains functions for creating objects from serialized values.
  final SerdeCtx serdeCtx;

  /// The schema in Schema Definition Language (SDL) representation
  late final String schemaStr = printSchema(this);

  /// The schema as a `package:gql` parsed node
  // late final DocumentNode schemaNode = parseString(schemaStr);
  final SchemaDefinitionNode? astNode;

  final List<SchemaExtensionNode> extensionAstNodes;

  /// Other [GraphQLNamedType] that you want to have in the schema
  final List<GraphQLNamedType> otherTypes;

  /// A Map from name to [GraphQLType].
  /// Contains all named types in the schema.
  final typeMap = <String, GraphQLNamedType>{};

  /// Contains all named types in the schema.
  /// Same as `typeMap.values.toList()`.
  late final List<GraphQLNamedType> allTypes = [
    ...typeMap.values.where((t) => !isIntrospectionType(t)),
    ...typeMap.values.where(isIntrospectionType),
  ];

  /// Returns the [GraphQLNamedType] with the given [name]
  GraphQLNamedType? getType(String name) => typeMap[name];

  /// A Map from name to [GraphQLDirective].
  final Map<String, GraphQLDirective> directiveMap = {};

  /// Returns the [GraphQLDirective] with the given [name]
  GraphQLDirective? getDirective(String name) => directiveMap[name];

  /// Returns the type for the given [operation] type
  GraphQLObjectType? getRootType(OperationType operation) {
    switch (operation) {
      case OperationType.mutation:
        return mutationType;
      case OperationType.query:
        return queryType;
      case OperationType.subscription:
        return subscriptionType;
    }
  }

  /// Returns all the [GraphQLObjectType] that implement a given abstract [type]
  List<GraphQLObjectType>? getPossibleTypes(GraphQLCompositeType type) {
    if (type is GraphQLUnionType) {
      return type.possibleTypes;
    } else if (type is GraphQLObjectType && type.isInterface) {
      return type.possibleTypes.where((obj) => !obj.isInterface).toList();
    }
  }

  final _subTypeMap = <String, Set<String>>{};

  /// Returns `true` if [maybeSubType] is a possible type of [abstractType]
  bool isSubType(
    GraphQLCompositeType abstractType,
    GraphQLObjectType maybeSubType,
  ) {
    if (!isAbstractType(abstractType)) return false;
    Set<String>? map = _subTypeMap[abstractType.name];
    if (map == null) {
      map = {};

      if (abstractType is GraphQLUnionType) {
        for (final type in abstractType.possibleTypes) {
          map.add(type.name);
        }
      } else if (abstractType is GraphQLObjectType) {
        final implementations = abstractType.possibleTypes;
        for (final type in implementations) {
          map.add(type.name);
        }
      }

      _subTypeMap[abstractType.name] = map;
    }
    return map.contains(maybeSubType.name);
  }

  List<GraphQLError>? __validationErrors;

  /// The schema against which queries, mutations
  /// and subscriptions are executed.
  ///
  /// throws [SameNameGraphQLTypeException] if there are different types
  /// with the same name.
  /// throws [UnnamedTypeException] if there are different types
  /// with the same name.
  /// throws [InvalidTypeNameException] if there is a type
  /// with an invalid name. Names may not be prefixed with
  /// [reservedTypeNamePrefix].
  GraphQLSchema({
    this.queryType,
    this.mutationType,
    this.subscriptionType,
    this.description,
    this.otherTypes = const [],
    List<GraphQLDirective>? directives,
    SerdeCtx? serdeCtx,
    this.astNode,
    this.extensionAstNodes = const [],
  }) : serdeCtx = serdeCtx ?? SerdeCtx() {
    this.directives.addAll(directives ?? GraphQLDirective.specifiedDirectives);
    _collectTypes();
    _collectDirectives();
  }

  /// All [GraphQLType] names should match this regular expression
  /// https://spec.graphql.org/draft/#sec-Names.Reserved-Names
  static final reservedTypeNamePrefix = RegExp('^__');

  void _collectTypes() {
    final allNamedTypes = fetchAllNamedTypes(this);
    for (final type in allNamedTypes) {
      final name = type.name;
      if (name.isEmpty) {
        throw UnnamedTypeException(this, type);
      } else if (reservedTypeNamePrefix.hasMatch(name) &&
          !isIntrospectionType(type)) {
        throw InvalidTypeNameException(this, type);
      }
      final prev = typeMap[name];
      if (prev == null) {
        typeMap[name] = type;
      } else {
        throw SameNameGraphQLTypeException(type, prev);
      }
    }
  }

  void _collectDirectives() {
    final otherDirectives = typeElements()
        .expand((e) => e.attachments.whereType<ToDirectiveValue>())
        .map((e) => e.directiveDefinition)
        .toSet();
    directives.addAll(otherDirectives);

    for (final dir in directives) {
      final prev = directiveMap[dir.name];
      if (prev == null) {
        directiveMap[dir.name] = dir;
      } else if (prev != dir) {
        // TODO: 1I
      }
    }
  }

  /// Returns an iterable over all the type [GraphQLElement] in the schema.
  Iterable<GraphQLElement> typeElements() {
    return typeMap.values.expand(
      (type) => type.whenNamed(
        enum_: (type) => [type, ...type.values],
        scalar: (type) => [type],
        object: (type) =>
            [type, ...type.fields, ...type.fields.expand((f) => f.inputs)],
        input: (type) => [type, ...type.fields],
        union: (type) => [type],
      ),
    );
  }
}

/// Whether to check asserts in some GraphQL element constructors
///
/// For example output and input types
/// in [GraphQLObjectField] and [GraphQLFieldInput]
@visibleForTesting
bool checkAsserts = true;

/// Implements the "Type Validation" sub-sections of the specification's
/// "Type System" section.
///
/// Validation runs synchronously, returning an array of encountered errors, or
/// an empty array if no errors were encountered and the Schema is valid.
List<GraphQLError> validateSchema(
  GraphQLSchema schema,
) {
  // If this Schema has already been validated, return the previous results.
  if (schema.__validationErrors != null) {
    return schema.__validationErrors!;
  }

  // Validate the schema, producing a list of errors.
  final context = SchemaValidationContext(schema);
  validateRootTypes(context);
  validateDirectives(context);
  validateTypes(context);
  validateAttachments(context);

  // Persist the results of validation before returning to ensure validation
  // does not run multiple times for this schema.
  final errors = context.getErrors();
  schema.__validationErrors = errors;
  return errors;
}

// TODO: 1T test errors toString()

/// Base exception thrown on schema construction
class SchemaValidationException implements Exception {}

/// Thrown when a schema was constructed with an unnamed type
class UnnamedTypeException implements SchemaValidationException {
  /// The type with no name found in the schema
  final GraphQLType type;

  /// The schema that was being constructed when this exception was thrown
  final GraphQLSchema schema;

  /// Thrown when a schema was constructed with an unnamed type
  const UnnamedTypeException(this.schema, this.type);

  @override
  String toString() {
    return 'One of the provided types for building the'
        ' Schema is missing a name. '
        'GraphQLType(runtimeType: ${type.runtimeType},'
        ' description: ${type.description}.)';
  }
}

/// Thrown when a schema was constructed with a type with an invalid name
class InvalidTypeNameException implements SchemaValidationException {
  /// The type with an invalid name found in the schema
  final GraphQLType type;

  /// The schema that was being constructed when this exception was thrown
  final GraphQLSchema schema;

  /// Thrown when a schema was constructed with a type with an invalid name
  const InvalidTypeNameException(this.schema, this.type);

  @override
  String toString() {
    return 'One of the provided types for building the'
        ' Schema has an invalid name = $type.'
        ' Type names may not match: ${GraphQLSchema.reservedTypeNamePrefix.pattern}'
        '. GraphQLType(runtimeType: ${type.runtimeType},'
        ' description: ${type.description}.)';
  }
}

/// Thrown when a [GraphQLSchema] has at least two different
/// [GraphQLType]s with the same name.
class SameNameGraphQLTypeException implements SchemaValidationException {
  /// A type different from [type2] that shares it's name
  final GraphQLType type1;

  /// A type different from [type1] that shares it's name
  final GraphQLType type2;

  /// Thrown when a [GraphQLSchema] has at least two different
  /// [GraphQLType]s with the same name.
  SameNameGraphQLTypeException(this.type1, this.type2)
      : assert(type1.toString() == type2.toString());

  @override
  String toString() {
    return '''
Can't have multiple types with the same name: $type1.

Please reuse a previously created instance of the type.
If you need cyclic types, you can do the following:
```dart
GraphQLType? _type;
GraphQLType get type {
  if (_type != null) return _type!;
  __type = ...; // create the type
  _type = __type; // set the cached value

  // or __type.possibleTypes for unions
  __type.fields.addAll([
    ... // add fields with cyclic references
  ]);
  return __type;
}
```''';
  }
}
