// This ia code that uses custom serializers in the same way the leto_generator
// creates objects with serialziers via Annotations


import 'package:leto_schema/leto_schema.dart';

GraphQLObjectField<bool, Object?, Object?> get testMutationGraphQLField => _testMutationGraphQLField.value;
final _testMutationGraphQLField = HotReloadableDefinition<GraphQLObjectField<bool, Object?, Object?>>(
    (setValue) => setValue(graphQLBoolean.nonNull().field<Object?>(
          'testMutation',
          resolve: (obj, ctx) {
            final args = ctx.args;
            return true;
          },
        ))
          ..inputs.addAll([
            testInputGraphQLTypeInput.nonNull().inputField('input'),
            graphQLInt.nonNull().inputField('num'),
            graphQLBoolean.nonNull().inputField('isATest')
          ]));

GraphQLInputObjectType<TestInput> get testInputGraphQLTypeInput => _testInputGraphQLTypeInput.value;

final _testInputGraphQLTypeInput = HotReloadableDefinition<GraphQLInputObjectType<TestInput>>((setValue) {
  final __name = 'TestInput';

  final __testInputGraphQLTypeInput = inputObjectType<TestInput>(__name);

  setValue(__testInputGraphQLTypeInput);
  __testInputGraphQLTypeInput.fields.addAll(
    [
      graphQLString.nonNull().inputField('words'),
      testValueGraphQLTypeInput.inputField('value'),
      testValueGraphQLTypeInput.inputField('value2'),
    ],
  );

  return __testInputGraphQLTypeInput;
});

GraphQLInputObjectType<TestValue> get testValueGraphQLTypeInput => _testValueGraphQLTypeInput.value;

final _testValueGraphQLTypeInput = HotReloadableDefinition<GraphQLInputObjectType<TestValue>>((setValue) {
  final __name = 'TestValue';

  final __testValueGraphQLTypeInput = inputObjectType<TestValue>(__name);

  setValue(__testValueGraphQLTypeInput);
  __testValueGraphQLTypeInput.fields.addAll(
    [graphQLString.nonNull().inputField('value')],
  );

  return __testValueGraphQLTypeInput;
});

class TestInput {
  String words;
  TestValue? value;
  TestValue? value2;

  TestInput(this.words, this.value, this.value2);

  factory TestInput.fromJson(Map<String, dynamic> json) => _$TestInputFromJson(json);

  Map<String, dynamic> toJson() => _$TestInputToJson(this);
}

class TestValue {
  final String value;

  TestValue(this.value);

  factory TestValue.fromJson(Map<String, dynamic> json) => _$TestValueFromJson(json);

  Map<String, dynamic> toJson() => _$TestValueToJson(this);
}

TestValue _$TestValueFromJson(Map<String, dynamic> json) => TestValue(
      json['value'] as String,
    );

Map<String, dynamic> _$TestValueToJson(TestValue instance) => <String, dynamic>{
      'value': instance.value,
    };

TestInput _$TestInputFromJson(Map<String, dynamic> json) => TestInput(
      json['words'] as String,
      json['value'] == null ? null : TestValue.fromJson(json['value'] as Map<String, dynamic>),
      json['value2'] == null ? null : TestValue.fromJson(json['value2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestInputToJson(TestInput instance) => <String, dynamic>{
      'words': instance.words,
      'value': instance.value,
      'value2': instance.value2,
    };

final testValueSerializer = SerializerValue<TestValue>(
  key: "TestValue",
  fromJson: (ctx, json) => TestValue.fromJson(json), // _$$FromJson,
  // toJson: (m) => _$$ToJson(m as _$),
);

final testInputSerializer = SerializerValue<TestInput>(
  key: "TestInput",
  fromJson: (ctx, json) => TestInput.fromJson(json), // _$$FromJson,
  // toJson: (m) => _$$ToJson(m as _$),
);
