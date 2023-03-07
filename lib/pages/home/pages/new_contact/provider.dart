import '../../../../common/library/base_provider.dart';

class NewContactsProvider extends BaseProvider {
  searchUser(String keyword) => gQuery(graphSQL: searchUserSQL, variables: {
        "keyword": keyword,
      });
}

var searchUserSQL = ''' 
query searchUser(\$keyword: String!) {
  searchUser(keyword: \$keyword) {
    users {
      accountId
      account
      fullName
      nickName
      birthday
      email
      about
      avatar
    }
  }
}

''';
