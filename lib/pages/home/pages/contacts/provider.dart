import '../../../../common/library/base_provider.dart';

class ContactsProvider extends BaseProvider {
  friendship() => gQuery(graphSQL: friendshipSQL);
}

var friendshipSQL = ''' 
query friendship {
  friendship {
    friendships {
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