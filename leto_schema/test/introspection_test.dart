import 'package:leto/leto.dart';
import 'package:leto_schema/leto_schema.dart';
import 'package:leto_schema/src/utilities/build_schema.dart';
import 'package:leto_schema/src/utilities/introspection_query.dart';
import 'package:test/test.dart';

Future<Map<String, Object?>> graphqlSync(
  GraphQLSchema schema,
  String query,
) async {
  final result = await GraphQL(schema).parseAndExecute(query);
  return result.toJson();
}

/// Introspection
void main() {
  test('executes an introspection query', () async {
    final schema = buildSchema('''
      type SomeObject {
        someField: String
      }

      schema {
        query: SomeObject
      }
    ''');

    final source = getIntrospectionQuery(
      descriptions: false,
      specifiedByUrl: true,
      directiveIsRepeatable: true,
    );

    final result = await graphqlSync(schema, source);
    expect(result, {
      'data': {
        '__schema': {
          'queryType': {'name': 'SomeObject'},
          'mutationType': null,
          'subscriptionType': null,
          'types': [
            {
              'kind': 'OBJECT',
              'name': 'SomeObject',
              'specifiedByURL': null,
              'fields': [
                {
                  'name': 'someField',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
              ],
              'inputFields': null,
              'interfaces': [],
              'enumValues': null,
              'possibleTypes': null,
            },
            {
              'kind': 'SCALAR',
              'name': 'String',
              'specifiedByURL': null,
              'fields': null,
              'inputFields': null,
              'interfaces': null,
              'enumValues': null,
              'possibleTypes': null,
            },
            {
              'kind': 'SCALAR',
              'name': 'Boolean',
              'specifiedByURL': null,
              'fields': null,
              'inputFields': null,
              'interfaces': null,
              'enumValues': null,
              'possibleTypes': null,
            },
            {
              'kind': 'OBJECT',
              'name': '__Schema',
              'specifiedByURL': null,
              'fields': [
                {
                  'name': 'description',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'types',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'LIST',
                      'name': null,
                      'ofType': {
                        'kind': 'NON_NULL',
                        'name': null,
                        'ofType': {
                          'kind': 'OBJECT',
                          'name': '__Type',
                          'ofType': null,
                        },
                      },
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'queryType',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'OBJECT',
                      'name': '__Type',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'mutationType',
                  'args': [],
                  'type': {
                    'kind': 'OBJECT',
                    'name': '__Type',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'subscriptionType',
                  'args': [],
                  'type': {
                    'kind': 'OBJECT',
                    'name': '__Type',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'directives',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'LIST',
                      'name': null,
                      'ofType': {
                        'kind': 'NON_NULL',
                        'name': null,
                        'ofType': {
                          'kind': 'OBJECT',
                          'name': '__Directive',
                          'ofType': null,
                        },
                      },
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
              ],
              'inputFields': null,
              'interfaces': [],
              'enumValues': null,
              'possibleTypes': null,
            },
            {
              'kind': 'OBJECT',
              'name': '__Type',
              'specifiedByURL': null,
              'fields': [
                {
                  'name': 'kind',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'ENUM',
                      'name': '__TypeKind',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'name',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'description',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'specifiedByURL',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'fields',
                  'args': [
                    {
                      'name': 'includeDeprecated',
                      'type': {
                        'kind': 'SCALAR',
                        'name': 'Boolean',
                        'ofType': null,
                      },
                      'defaultValue': 'false',
                    },
                  ],
                  'type': {
                    'kind': 'LIST',
                    'name': null,
                    'ofType': {
                      'kind': 'NON_NULL',
                      'name': null,
                      'ofType': {
                        'kind': 'OBJECT',
                        'name': '__Field',
                        'ofType': null,
                      },
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'interfaces',
                  'args': [],
                  'type': {
                    'kind': 'LIST',
                    'name': null,
                    'ofType': {
                      'kind': 'NON_NULL',
                      'name': null,
                      'ofType': {
                        'kind': 'OBJECT',
                        'name': '__Type',
                        'ofType': null,
                      },
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'possibleTypes',
                  'args': [],
                  'type': {
                    'kind': 'LIST',
                    'name': null,
                    'ofType': {
                      'kind': 'NON_NULL',
                      'name': null,
                      'ofType': {
                        'kind': 'OBJECT',
                        'name': '__Type',
                        'ofType': null,
                      },
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'enumValues',
                  'args': [
                    {
                      'name': 'includeDeprecated',
                      'type': {
                        'kind': 'SCALAR',
                        'name': 'Boolean',
                        'ofType': null,
                      },
                      'defaultValue': 'false',
                    },
                  ],
                  'type': {
                    'kind': 'LIST',
                    'name': null,
                    'ofType': {
                      'kind': 'NON_NULL',
                      'name': null,
                      'ofType': {
                        'kind': 'OBJECT',
                        'name': '__EnumValue',
                        'ofType': null,
                      },
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'inputFields',
                  'args': [
                    {
                      'name': 'includeDeprecated',
                      'type': {
                        'kind': 'SCALAR',
                        'name': 'Boolean',
                        'ofType': null,
                      },
                      'defaultValue': 'false',
                    },
                  ],
                  'type': {
                    'kind': 'LIST',
                    'name': null,
                    'ofType': {
                      'kind': 'NON_NULL',
                      'name': null,
                      'ofType': {
                        'kind': 'OBJECT',
                        'name': '__InputValue',
                        'ofType': null,
                      },
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'ofType',
                  'args': [],
                  'type': {
                    'kind': 'OBJECT',
                    'name': '__Type',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
              ],
              'inputFields': null,
              'interfaces': [],
              'enumValues': null,
              'possibleTypes': null,
            },
            {
              'kind': 'ENUM',
              'name': '__TypeKind',
              'specifiedByURL': null,
              'fields': null,
              'inputFields': null,
              'interfaces': null,
              'enumValues': [
                {
                  'name': 'SCALAR',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'OBJECT',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'INTERFACE',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'UNION',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'ENUM',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'INPUT_OBJECT',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'LIST',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'NON_NULL',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
              ],
              'possibleTypes': null,
            },
            {
              'kind': 'OBJECT',
              'name': '__Field',
              'specifiedByURL': null,
              'fields': [
                {
                  'name': 'name',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'String',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'description',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'args',
                  'args': [
                    {
                      'name': 'includeDeprecated',
                      'type': {
                        'kind': 'SCALAR',
                        'name': 'Boolean',
                        'ofType': null,
                      },
                      'defaultValue': 'false',
                    },
                  ],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'LIST',
                      'name': null,
                      'ofType': {
                        'kind': 'NON_NULL',
                        'name': null,
                        'ofType': {
                          'kind': 'OBJECT',
                          'name': '__InputValue',
                          'ofType': null,
                        },
                      },
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'type',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'OBJECT',
                      'name': '__Type',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'isDeprecated',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'Boolean',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'deprecationReason',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
              ],
              'inputFields': null,
              'interfaces': [],
              'enumValues': null,
              'possibleTypes': null,
            },
            {
              'kind': 'OBJECT',
              'name': '__InputValue',
              'specifiedByURL': null,
              'fields': [
                {
                  'name': 'name',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'String',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'description',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'type',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'OBJECT',
                      'name': '__Type',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'defaultValue',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'isDeprecated',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'Boolean',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'deprecationReason',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
              ],
              'inputFields': null,
              'interfaces': [],
              'enumValues': null,
              'possibleTypes': null,
            },
            {
              'kind': 'OBJECT',
              'name': '__EnumValue',
              'specifiedByURL': null,
              'fields': [
                {
                  'name': 'name',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'String',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'description',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'isDeprecated',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'Boolean',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'deprecationReason',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
              ],
              'inputFields': null,
              'interfaces': [],
              'enumValues': null,
              'possibleTypes': null,
            },
            {
              'kind': 'OBJECT',
              'name': '__Directive',
              'specifiedByURL': null,
              'fields': [
                {
                  'name': 'name',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'String',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'description',
                  'args': [],
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'isRepeatable',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'Boolean',
                      'ofType': null,
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'locations',
                  'args': [],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'LIST',
                      'name': null,
                      'ofType': {
                        'kind': 'NON_NULL',
                        'name': null,
                        'ofType': {
                          'kind': 'ENUM',
                          'name': '__DirectiveLocation',
                          'ofType': null,
                        },
                      },
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'args',
                  'args': [
                    {
                      'name': 'includeDeprecated',
                      'type': {
                        'kind': 'SCALAR',
                        'name': 'Boolean',
                        'ofType': null,
                      },
                      'defaultValue': 'false',
                    },
                  ],
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'LIST',
                      'name': null,
                      'ofType': {
                        'kind': 'NON_NULL',
                        'name': null,
                        'ofType': {
                          'kind': 'OBJECT',
                          'name': '__InputValue',
                          'ofType': null,
                        },
                      },
                    },
                  },
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
              ],
              'inputFields': null,
              'interfaces': [],
              'enumValues': null,
              'possibleTypes': null,
            },
            {
              'kind': 'ENUM',
              'name': '__DirectiveLocation',
              'specifiedByURL': null,
              'fields': null,
              'inputFields': null,
              'interfaces': null,
              'enumValues': [
                {
                  'name': 'QUERY',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'MUTATION',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'SUBSCRIPTION',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'FIELD',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'FRAGMENT_DEFINITION',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'FRAGMENT_SPREAD',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'INLINE_FRAGMENT',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'VARIABLE_DEFINITION',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'SCHEMA',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'SCALAR',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'OBJECT',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'FIELD_DEFINITION',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'ARGUMENT_DEFINITION',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'INTERFACE',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'UNION',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'ENUM',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'ENUM_VALUE',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'INPUT_OBJECT',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'INPUT_FIELD_DEFINITION',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
              ],
              'possibleTypes': null,
            },
          ],
          'directives': [
            {
              'name': 'include',
              'isRepeatable': false,
              'locations': ['FIELD', 'FRAGMENT_SPREAD', 'INLINE_FRAGMENT'],
              'args': [
                {
                  'defaultValue': null,
                  'name': 'if',
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'Boolean',
                      'ofType': null,
                    },
                  },
                },
              ],
            },
            {
              'name': 'skip',
              'isRepeatable': false,
              'locations': ['FIELD', 'FRAGMENT_SPREAD', 'INLINE_FRAGMENT'],
              'args': [
                {
                  'defaultValue': null,
                  'name': 'if',
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'Boolean',
                      'ofType': null,
                    },
                  },
                },
              ],
            },
            {
              'name': 'deprecated',
              'isRepeatable': false,
              'locations': [
                'FIELD_DEFINITION',
                'ARGUMENT_DEFINITION',
                'INPUT_FIELD_DEFINITION',
                'ENUM_VALUE',
              ],
              'args': [
                {
                  'defaultValue': '"No longer supported"',
                  'name': 'reason',
                  'type': {
                    'kind': 'SCALAR',
                    'name': 'String',
                    'ofType': null,
                  },
                },
              ],
            },
            {
              'name': 'specifiedBy',
              'isRepeatable': false,
              'locations': ['SCALAR'],
              'args': [
                {
                  'defaultValue': null,
                  'name': 'url',
                  'type': {
                    'kind': 'NON_NULL',
                    'name': null,
                    'ofType': {
                      'kind': 'SCALAR',
                      'name': 'String',
                      'ofType': null,
                    },
                  },
                },
              ],
            },
          ],
        },
      },
    });
  });

  test('introspects on input object', () async {
    final schema = buildSchema(r'''
      input SomeInputObject {
        a: String = "tes\\t de\\fault"
        b: [String]
        c: String = null
      }

      type Query {
        someField(someArg: SomeInputObject): String
      }
    ''');

    const source = '''
      {
        __type(name: "SomeInputObject") {
          kind
          name
          inputFields {
            name
            type { ...TypeRef }
            defaultValue
          }
        }
      }

      fragment TypeRef on __Type {
        kind
        name
        ofType {
          kind
          name
          ofType {
            kind
            name
            ofType {
              kind
              name
            }
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {
          'kind': 'INPUT_OBJECT',
          'name': 'SomeInputObject',
          'inputFields': [
            {
              'name': 'a',
              'type': {
                'kind': 'SCALAR',
                'name': 'String',
                'ofType': null,
              },
              'defaultValue': '"tes\\t de\\fault"',
            },
            {
              'name': 'b',
              'type': {
                'kind': 'LIST',
                'name': null,
                'ofType': {
                  'kind': 'SCALAR',
                  'name': 'String',
                  'ofType': null,
                },
              },
              'defaultValue': null,
            },
            {
              'name': 'c',
              'type': {
                'kind': 'SCALAR',
                'name': 'String',
                'ofType': null,
              },
              'defaultValue': 'null',
            },
          ],
        },
      },
    });
  });

  test('introspects any default value', () async {
    final schema = buildSchema('''
      input InputObjectWithDefaultValues {
        a: String = "Emoji: \u{1F600}"
        b: Complex = {x: ["abc"], y: 123}
      }

      input Complex {
        x: [String]
        y: Int
      }

      type Query {
        someField(someArg: InputObjectWithDefaultValues): String
      }
    ''');

    const source = '''
      {
        __type(name: "InputObjectWithDefaultValues") {
          inputFields {
            name
            defaultValue
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {
          'inputFields': [
            {
              'name': 'a',
              'defaultValue': '"Emoji: \u{1F600}"',
            },
            {
              'name': 'b',
              'defaultValue': '{x: ["abc"], y: 123}',
            },
          ],
        },
      },
    });
  });

  test('supports the __type root field', () async {
    final schema = buildSchema('''
      type Query {
        someField: String
      }
    ''');

    const source = '''
      {
        __type(name: "Query") {
          name
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {'name': 'Query'},
      },
    });
  });

  test('identifies deprecated fields', () async {
    final schema = buildSchema('''
      type Query {
        nonDeprecated: String
        deprecated: String @deprecated(reason: "Removed in 1.0")
        deprecatedWithEmptyReason: String @deprecated(reason: "")
      }
    ''');

    const source = '''
      {
        __type(name: "Query") {
          fields(includeDeprecated: true) {
            name
            isDeprecated,
            deprecationReason
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {
          'fields': [
            {
              'name': 'nonDeprecated',
              'isDeprecated': false,
              'deprecationReason': null,
            },
            {
              'name': 'deprecated',
              'isDeprecated': true,
              'deprecationReason': 'Removed in 1.0',
            },
            {
              'name': 'deprecatedWithEmptyReason',
              'isDeprecated': true,
              'deprecationReason': '',
            },
          ],
        },
      },
    });
  });

  test('respects the includeDeprecated parameter for fields', () async {
    final schema = buildSchema('''
      type Query {
        nonDeprecated: String
        deprecated: String @deprecated(reason: "Removed in 1.0")
      }
    ''');

    const source = '''
      {
        __type(name: "Query") {
          trueFields: fields(includeDeprecated: true) {
            name
          }
          falseFields: fields(includeDeprecated: false) {
            name
          }
          omittedFields: fields {
            name
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {
          'trueFields': [
            {'name': 'nonDeprecated'},
            {'name': 'deprecated'}
          ],
          'falseFields': [
            {'name': 'nonDeprecated'}
          ],
          'omittedFields': [
            {'name': 'nonDeprecated'}
          ],
        },
      },
    });
  });

  test('identifies deprecated args', () async {
    final schema = buildSchema('''
      type Query {
        someField(
          nonDeprecated: String
          deprecated: String @deprecated(reason: "Removed in 1.0")
          deprecatedWithEmptyReason: String @deprecated(reason: "")
        ): String
      }
    ''');

    const source = '''
      {
        __type(name: "Query") {
          fields {
            args(includeDeprecated: true) {
              name
              isDeprecated,
              deprecationReason
            }
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {
          'fields': [
            {
              'args': [
                {
                  'name': 'nonDeprecated',
                  'isDeprecated': false,
                  'deprecationReason': null,
                },
                {
                  'name': 'deprecated',
                  'isDeprecated': true,
                  'deprecationReason': 'Removed in 1.0',
                },
                {
                  'name': 'deprecatedWithEmptyReason',
                  'isDeprecated': true,
                  'deprecationReason': '',
                },
              ],
            },
          ],
        },
      },
    });
  });

  test('respects the includeDeprecated parameter for args', () async {
    final schema = buildSchema('''
      type Query {
        someField(
          nonDeprecated: String
          deprecated: String @deprecated(reason: "Removed in 1.0")
        ): String
      }
    ''');

    const source = '''
      {
        __type(name: "Query") {
          fields {
            trueArgs: args(includeDeprecated: true) {
              name
            }
            falseArgs: args(includeDeprecated: false) {
              name
            }
            omittedArgs: args {
              name
            }
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {
          'fields': [
            {
              'trueArgs': [
                {'name': 'nonDeprecated'},
                {'name': 'deprecated'}
              ],
              'falseArgs': [
                {'name': 'nonDeprecated'}
              ],
              'omittedArgs': [
                {'name': 'nonDeprecated'}
              ],
            },
          ],
        },
      },
    });
  });

  test('identifies deprecated enum values', () async {
    final schema = buildSchema('''
      enum SomeEnum {
        NON_DEPRECATED
        DEPRECATED @deprecated(reason: "Removed in 1.0")
        ALSO_NON_DEPRECATED
      }

      type Query {
        someField(someArg: SomeEnum): String
      }
    ''');

    const source = '''
      {
        __type(name: "SomeEnum") {
          enumValues(includeDeprecated: true) {
            name
            isDeprecated,
            deprecationReason
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {
          'enumValues': [
            {
              'name': 'NON_DEPRECATED',
              'isDeprecated': false,
              'deprecationReason': null,
            },
            {
              'name': 'DEPRECATED',
              'isDeprecated': true,
              'deprecationReason': 'Removed in 1.0',
            },
            {
              'name': 'ALSO_NON_DEPRECATED',
              'isDeprecated': false,
              'deprecationReason': null,
            },
          ],
        },
      },
    });
  });

  test('respects the includeDeprecated parameter for enum values', () async {
    final schema = buildSchema('''
      enum SomeEnum {
        NON_DEPRECATED
        DEPRECATED @deprecated(reason: "Removed in 1.0")
        DEPRECATED_WITH_EMPTY_REASON @deprecated(reason: "")
        ALSO_NON_DEPRECATED
      }

      type Query {
        someField(someArg: SomeEnum): String
      }
    ''');

    const source = '''
      {
        __type(name: "SomeEnum") {
          trueValues: enumValues(includeDeprecated: true) {
            name
          }
          falseValues: enumValues(includeDeprecated: false) {
            name
          }
          omittedValues: enumValues {
            name
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {
          'trueValues': [
            {'name': 'NON_DEPRECATED'},
            {'name': 'DEPRECATED'},
            {'name': 'DEPRECATED_WITH_EMPTY_REASON'},
            {'name': 'ALSO_NON_DEPRECATED'},
          ],
          'falseValues': [
            {'name': 'NON_DEPRECATED'},
            {'name': 'ALSO_NON_DEPRECATED'},
          ],
          'omittedValues': [
            {'name': 'NON_DEPRECATED'},
            {'name': 'ALSO_NON_DEPRECATED'},
          ],
        },
      },
    });
  });

  test('identifies deprecated for input fields', () async {
    final schema = buildSchema('''
      input SomeInputObject {
        nonDeprecated: String
        deprecated: String @deprecated(reason: "Removed in 1.0")
        deprecatedWithEmptyReason: String @deprecated(reason: "")
      }

      type Query {
        someField(someArg: SomeInputObject): String
      }
    ''');

    const source = '''
      {
        __type(name: "SomeInputObject") {
          inputFields(includeDeprecated: true) {
            name
            isDeprecated,
            deprecationReason
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {
          'inputFields': [
            {
              'name': 'nonDeprecated',
              'isDeprecated': false,
              'deprecationReason': null,
            },
            {
              'name': 'deprecated',
              'isDeprecated': true,
              'deprecationReason': 'Removed in 1.0',
            },
            {
              'name': 'deprecatedWithEmptyReason',
              'isDeprecated': true,
              'deprecationReason': '',
            },
          ],
        },
      },
    });
  });

  test('respects the includeDeprecated parameter for input fields', () async {
    final schema = buildSchema('''
      input SomeInputObject {
        nonDeprecated: String
        deprecated: String @deprecated(reason: "Removed in 1.0")
      }

      type Query {
        someField(someArg: SomeInputObject): String
      }
    ''');

    const source = '''
      {
        __type(name: "SomeInputObject") {
          trueFields: inputFields(includeDeprecated: true) {
            name
          }
          falseFields: inputFields(includeDeprecated: false) {
            name
          }
          omittedFields: inputFields {
            name
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        '__type': {
          'trueFields': [
            {'name': 'nonDeprecated'},
            {'name': 'deprecated'}
          ],
          'falseFields': [
            {'name': 'nonDeprecated'}
          ],
          'omittedFields': [
            {'name': 'nonDeprecated'}
          ],
        },
      },
    });
  });

  test('fails as expected on the __type root field without an arg', () async {
    final schema = buildSchema('''
      type Query {
        someField: String
      }
    ''');

    const source = '''
      {
        __type {
          name
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'errors': [
        {
          'message': stringContainsInOrder(
            ['Missing', '"name"', 'String!', '"__type"'],
          ),
          // 'Field "__type" argument "name" of type "String!"'
          //     ' is required, but it was not provided.',
          // TODO: there shouldn't be a 'path' property. support validation before execution
          'path': ['__type'],
          'locations': [
            {'line': 1, 'column': 8}
          ],
        },
      ],
      // TODO: there shouldn't be a 'data' property. support validation before execution
      'data': {'__type': null},
    });
  });

  test('exposes descriptions', () async {
    // TODO: support schema description """Schema description"""
    final schema = buildSchema('''
      """Enum description"""
      enum SomeEnum {
        """Value description"""
        VALUE
      }

      """Object description"""
      type SomeObject {
        """Field description"""
        someField(arg: SomeEnum): String
      }

      schema {
        query: SomeObject
      }
    ''');

    const source = '''
      {
        Schema: __schema { description }
        SomeObject: __type(name: "SomeObject") {
          description,
          fields {
            name
            description
          }
        }
        SomeEnum: __type(name: "SomeEnum") {
          description
          enumValues {
            name
            description
          }
        }
      }
    ''';

    expect(await graphqlSync(schema, source), {
      'data': {
        'Schema': {
          // TODO: support schema description """Schema description"""
          // 'description': 'Schema description',
          'description': null,
        },
        'SomeEnum': {
          'description': 'Enum description',
          'enumValues': [
            {
              'name': 'VALUE',
              'description': 'Value description',
            },
          ],
        },
        'SomeObject': {
          'description': 'Object description',
          'fields': [
            {
              'name': 'someField',
              'description': 'Field description',
            },
          ],
        },
      },
    });
  });

  // TODO:
  // test('executes an introspection query without calling global resolvers',
  //     () async {
  //   final schema = buildSchema('''
  //     type Query {
  //       someField: String
  //     }
  //   ''');

  //   final source = getIntrospectionQuery(
  //     specifiedByUrl: true,
  //     directiveIsRepeatable: true,
  //     schemaDescription: true,
  //   );

  //   // istanbul ignore next (Called only to fail test)
  //   Never fieldResolver(dynamic obj, ReqCtx info) {
  //     expect.fail(
  //       '''Called on ${info.parentCtx.objectType.name}::${info.field.name}''',
  //     );
  //     throw Error();
  //   }

  //   // istanbul ignore next (Called only to fail test)
  //   Never typeResolver(dynamic _1, dynamic _2, GraphQLResolveInfo info) {
  //     expect.fail('''Called on ${info.parentType.name}::${info.fieldName}''');
  //     throw Error();
  //   }

  //   final result = await GraphQL(
  //     schema,
  //     defaultFieldResolver: fieldResolver,
  //     typeResolver: typeResolver,
  //   ).parseAndExecute(source);

  //   expect(result.errors, isEmpty);
  // });
}
