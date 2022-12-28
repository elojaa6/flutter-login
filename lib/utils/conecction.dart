import 'package:hasura_connect/hasura_connect.dart';

class GraphqlConnection {
  static String domain = 'https://difusionvi.ups.edu.ec/';
  static String servidor = 'https://difusionvi.ups.edu.ec/hasura/v1/graphql';
  static String socket = 'ws://difusionvi.ups.edu.ec/hasura/v1/graphql';

  HasuraConnect clientToQuery() {
    return HasuraConnect(
      servidor,
      headers: {
        'content-type': 'application/json',
        'x-hasura-admin-secret': 'socialsuite',
      },
    );
  }
}
