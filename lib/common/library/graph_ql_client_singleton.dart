//
// class GraphQLClientSingleton {
//   GraphQLClientSingleton._();
//
//   static final GraphQLClientSingleton _instance = GraphQLClientSingleton._();
//
//   static final _httpLink = HttpLink(
//     'http://127.0.0.1:8083/graphql',
//   );
//
//   static const _token =
//   '''eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJhd2Vzb21lY3VzdG9tZXJAZ21haWwuY29tIn0.cGT2KqtmT8KNIJhyww3T8fAzUsCD5_vxuHl5WbXtp8c''';
//
//   static final _authLink = AuthLink(
//     getToken: () async => 'Bearer $_token',
//   );
//
//   static final _link = _authLink.concat(_httpLink);
//
//   static final GraphQLClient _client = GraphQLClient(
//     cache: GraphQLCache(),
//     link: _link,
//   );
//
//   static GraphQLClientSingleton get instance => _instance;
//   GraphQLClient get client => _client;
// }