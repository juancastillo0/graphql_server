part of graphql_schema.src.schema;

/// Strictly dictates the structure of some input data in a GraphQL query.
///
/// GraphQL's rigid type system is primarily implemented in Dart using
/// classes that extend from [GraphQLType].
///
/// A [GraphQLType] represents values of type [Value] as
/// values of type [Serialized]; for example, a
/// [GraphQLType] that serializes objects into `String`s.
abstract class GraphQLType<Value, Serialized> {
  const GraphQLType();

  /// The name of this type.
  String? get name;

  /// A description of this type, which, while optional, can be
  /// very useful in tools like GraphiQL.
  String? get description;

  /// Serializes an arbitrary input value.
  Serialized serialize(Value value);

  /// Deserializes a serialized value.
  Value deserialize(SerdeCtx serdeCtx, Serialized serialized);

  /// Attempts to cast a dynamic [value] into a [Serialized] instance.
  Serialized convert(Object? value) => value as Serialized;

  /// Performs type coercion against an [input] value, and returns a
  /// list of errors if the validation was unsuccessful.
  ValidationResult<Serialized> validate(String key, Object? input);

  /// Creates a non-nullable type that represents this type, and enforces
  /// that a field of this type is present in input data.
  GraphQLType<Value, Serialized> nonNullable();

  /// Turns this type into one suitable for being provided as an input
  /// to a [GraphQLObjectField].
  GraphQLType<Value, Serialized> coerceToInputObject();

  Serialized serializeSafe(Object? value, {bool nested = true}) {
    if (value is Serialized &&
        (!nested || value is! Map && value is! List || value is! Value)) {
      return value;
    } else if (value is! Value) {
      throw GraphQLException([
        GraphQLExceptionError(
          'Cannot convert value $value of $Value to type $Serialized.'
          ' In $name ($runtimeType)',
        )
      ]);
    } else {
      // final v = this;
      // if (value is List && v is GraphQLListType) {
      //   return value
      //       .map((e) => (v as GraphQLListType).ofType.serialize(e))
      //       .toList() as Serialized;
      // }
      return serialize(value);
    }
  }

  Iterable<Object?> get props;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is GraphQLType &&
            runtimeType == other.runtimeType &&
            const DeepCollectionEquality().equals(other.props, props);
  }

  // int? _hashCode;
  // @override
  // int get hashCode => _hashCode ??=
  //     runtimeType.hashCode ^ const DeepCollectionEquality().hash(props);

  @override
  String toString() => name!;

  GenericHelp<Value> get generic => GenericHelp<Value>();

  GraphQLType<Value, Serialized> get realType {
    GraphQLType<Value, Serialized> type = this;
    if (type is GraphQLRefType<Value, Serialized>) {
      type = type.innerType();
    }
    return type;
  }

  bool get isNonNullable => realType is GraphQLNonNullableType;
  bool get isNullable => !isNonNullable;

  O when<O>({
    required O Function(GraphQLEnumType<Value>) enum_,
    required O Function(GraphQLScalarType<Value, Serialized>) scalar,
    required O Function(GraphQLObjectType<Value>) object,
    required O Function(GraphQLInputObjectType<Value>) input,
    required O Function(GraphQLUnionType<Value>) union,
    required O Function(GraphQLListType) list,
    required O Function(GraphQLNonNullableType<Value, Serialized>) nonNullable,
  }) {
    final GraphQLType type = realType;

    if (type is GraphQLEnumType<Value>) {
      return enum_(type);
    } else if (type is GraphQLScalarType<Value, Serialized>) {
      return scalar(type);
    } else if (type is GraphQLObjectType<Value>) {
      return object(type);
    } else if (type is GraphQLInputObjectType<Value>) {
      return input(type);
    } else if (type is GraphQLUnionType<Value>) {
      return union(type);
    } else if (type is GraphQLListType) {
      return list(type);
    } else if (type is GraphQLNonNullableType<Value, Serialized>) {
      return nonNullable(type);
    } else {
      throw Exception(
        'Could not cast $this ($runtimeType) as a typical GraphQLType.',
      );
    }
  }

  O whenMaybe<O>({
    O Function(GraphQLEnumType<Value>)? enum_,
    O Function(GraphQLScalarType<Value, Serialized>)? scalar,
    O Function(GraphQLObjectType<Value>)? object,
    O Function(GraphQLInputObjectType<Value>)? input,
    O Function(GraphQLUnionType<Value>)? union,
    O Function(GraphQLListType)? list,
    O Function(GraphQLNonNullableType<Value, Serialized>)? nonNullable,
    required O Function(GraphQLType) orElse,
  }) {
    return when(
      scalar: scalar ?? orElse,
      object: object ?? orElse,
      input: input ?? orElse,
      list: list ?? orElse,
      nonNullable: nonNullable ?? orElse,
      enum_: enum_ ?? orElse,
      union: union ?? orElse,
    );
  }

  O? whenOrNull<O>({
    O? Function(GraphQLEnumType<Value>)? enum_,
    O? Function(GraphQLScalarType<Value, Serialized>)? scalar,
    O? Function(GraphQLObjectType<Value>)? object,
    O? Function(GraphQLInputObjectType<Value>)? input,
    O? Function(GraphQLUnionType<Value>)? union,
    O? Function(GraphQLListType)? list,
    O? Function(GraphQLNonNullableType<Value, Serialized>)? nonNullable,
  }) {
    O? orElse(GraphQLType _) {
      return null;
    }

    return when(
      scalar: scalar ?? orElse,
      object: object ?? orElse,
      input: input ?? orElse,
      list: list ?? orElse,
      nonNullable: nonNullable ?? orElse,
      enum_: enum_ ?? orElse,
      union: union ?? orElse,
    );
  }
}

/// Shorthand to create a [GraphQLListType].
GraphQLListType<Value, Serialized> listOf<Value, Serialized>(
        GraphQLType<Value, Serialized> innerType) =>
    GraphQLListType<Value, Serialized>(innerType);

/// A special [GraphQLType] that indicates that input vales should
/// be a list of another type, [ofType].
class GraphQLListType<Value, Serialized>
    extends GraphQLType<List<Value>, List<Serialized>>
    with _NonNullableMixin<List<Value>, List<Serialized>> {
  final GraphQLType<Value, Serialized> ofType;

  GraphQLListType(this.ofType);

  @override
  List<Serialized> convert(Object? value) {
    if (value is Iterable) {
      return value.cast<Serialized>().toList();
    } else {
      return super.convert(value);
    }
  }

  @override
  String? get name => null;

  @override
  String get description =>
      'A list of items of type ${ofType.name ?? '(${ofType.description}).'}';

  @override
  ValidationResult<List<Serialized>> validate(String key, Object? input) {
    if (input is! List)
      return ValidationResult.failure(['Expected "$key" to be a list.']);

    final List<Serialized> out = [];
    final List<String> errors = [];

    for (int i = 0; i < input.length; i++) {
      final k = '"$key" at index $i';
      final v = input[i];
      final result = ofType.validate(k, v);
      if (!result.successful)
        errors.addAll(result.errors);
      else
        out.add(result.value as Serialized);
    }

    if (errors.isNotEmpty) return ValidationResult.failure(errors);
    return ValidationResult.ok(out);
  }

  @override
  List<Value> deserialize(SerdeCtx serdeCtx, List<Serialized> serialized) {
    return serialized
        .map<Value>((v) => ofType.deserialize(serdeCtx, v))
        .toList();
  }

  @override
  List<Serialized> serialize(List<Value> value) {
    return value.map(ofType.serializeSafe).toList();
  }

  @override
  String toString() => '[$ofType]';

  @override
  Iterable<Object?> get props => [ofType];

  @override
  GraphQLType<List<Value>, List<Serialized>> coerceToInputObject() =>
      GraphQLListType<Value, Serialized>(ofType.coerceToInputObject());
}

mixin _NonNullableMixin<Value, Serialized> on GraphQLType<Value, Serialized> {
  GraphQLType<Value, Serialized>? _nonNullableCache;

  @override
  GraphQLType<Value, Serialized> nonNullable() =>
      _nonNullableCache ??= GraphQLNonNullableType<Value, Serialized>._(this);
}

/// A special [GraphQLType] that indicates that input values should both be
/// non-null, and be valid when asserted against another type, named [ofType].
class GraphQLNonNullableType<Value, Serialized>
    extends GraphQLType<Value, Serialized> {
  final GraphQLType<Value, Serialized> ofType;

  const GraphQLNonNullableType._(this.ofType);

  @override
  String? get name => null; //innerType.name;

  @override
  String get description =>
      'A non-nullable binding to ${ofType.name ?? '(${ofType.description}).'}';

  @override
  GraphQLType<Value, Serialized> nonNullable() => this;

  @override
  ValidationResult<Serialized> validate(String key, Object? input) {
    if (input == null)
      return ValidationResult.failure(
        ['Expected "$key" to be a non-null value.'],
      );
    return ofType.validate(key, input);
  }

  @override
  Value deserialize(SerdeCtx serdeCtx, Serialized serialized) {
    return ofType.deserialize(serdeCtx, serialized);
  }

  @override
  Serialized serialize(Value value) {
    return ofType.serialize(value);
  }

  @override
  String toString() {
    return '$ofType!';
  }

  @override
  Iterable<Object?> get props => [ofType];

  @override
  GraphQLType<Value, Serialized> coerceToInputObject() {
    return ofType.coerceToInputObject().nonNullable();
  }
}
