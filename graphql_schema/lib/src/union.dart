part of graphql_schema.src.schema;

/// A special [GraphQLType] that indicates that an input value may
/// be valid against one or more [possibleTypes].
///
/// All provided types must be [GraphQLObjectType]s.
class GraphQLUnionType<P extends Object>
    extends GraphQLType<P, Map<String, dynamic>>
    with _NonNullableMixin<P, Map<String, dynamic>> {
  /// The name of this type.
  @override
  final String name;

  /// A list of all types that conform to this union.
  final List<GraphQLType<P, Map<String, dynamic>>> possibleTypes = [];

  GraphQLUnionType(
    this.name,
    Iterable<GraphQLType<P, Map<String, dynamic>>> possibleTypes,
  )   : assert(
            possibleTypes.every((t) => t.realType is GraphQLObjectType),
            'The member types of a Union type must all be Object base types; '
            'Scalar, Interface and Union types must not be member types '
            'of a Union. Similarly, wrapping types must not be member '
            'types of a Union.'),
        assert(possibleTypes.isNotEmpty,
            'A Union type must define one or more member types.') {
    for (final t in possibleTypes.toSet()) {
      this.possibleTypes.add(t);
    }
  }

  @override
  String get description => possibleTypes.map((t) => t.name).join(' | ');

  @override
  GraphQLType<P, Map<String, dynamic>> coerceToInputObject() {
    return GraphQLUnionType(
      '${name}Input',
      possibleTypes.map((t) => t.coerceToInputObject()),
    );
  }

  @override
  Map<String, dynamic> serialize(P value) {
    for (final type in possibleTypes) {
      try {
        if (type.validate('@root', value).successful) {
          return type.serialize(value);
        }
      } catch (_) {}
    }

    throw ArgumentError();
  }

  @override
  P deserialize(
    SerdeCtx serdeCtx,
    Map<String, dynamic>? serialized,
  ) {
    if (serialized == null) {
      return null as P;
    }
    for (final type in possibleTypes) {
      try {
        return type.deserialize(serdeCtx, serialized);
      } catch (_) {}
    }

    throw ArgumentError();
  }

  @override
  ValidationResult<Map<String, dynamic>> validate(String key, Object? input) {
    final List<String> errors = [];

    for (final type in possibleTypes) {
      final result = type.validate(key, input);

      if (result.successful) {
        return result;
      } else {
        errors.addAll(result.errors);
      }
    }

    return ValidationResult<Map<String, dynamic>>.failure(errors);
  }

  @override
  Iterable<Object?> get props => [name, possibleTypes];
}
