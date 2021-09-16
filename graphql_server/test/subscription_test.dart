import 'dart:async';
import 'package:graphql_schema/graphql_schema.dart';
import 'package:graphql_server/graphql_server.dart';
import 'package:test/test.dart';

void main() {
  final episodes = [
    {'name': 'The Phantom Menace'},
    {'name': 'Attack of the Clones'},
    {'name': 'Attack of the Clones'}
  ];
  final episodesAsData = episodes.map((ep) {
    return {
      'data': {'prequels': ep}
    };
  });

  Stream<Map<String, dynamic>> resolveEpisodes(Object? _, Object? __) =>
      Stream.fromIterable(episodes)
          .map((ep) => <String, Object?>{...ep, 'not_selected': 1337});

  final episodeType = objectType<Object>('Episode', fields: [
    field('name', graphQLString.nonNull()),
    field('not_selected', graphQLInt),
  ]);

  final schema = graphQLSchema(
    queryType: objectType('TestQuery', fields: [
      field('episodes', graphQLInt, resolve: (_, __) => episodes),
    ]),
    subscriptionType: objectType('TestSubscription', fields: [
      field('prequels', episodeType, resolve: resolveEpisodes),
    ]),
  );

  final graphQL = GraphQL(schema);

  test('subscribe with selection', () async {
    final result = await graphQL.parseAndExecute('''
    subscription {
      prequels {
        name
      }
    }
    ''');
    final stream = result.data! as Stream<Map<String, dynamic>>;

    final asList = await stream.toList();
    print(asList);
    expect(asList, episodesAsData);
  });
}
