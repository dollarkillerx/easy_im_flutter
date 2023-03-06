import '../../../../common/library/base_provider.dart';

class SingEditFillProfilePageProvider extends BaseProvider {
  userRegistration(
    String fullName,
    String nickName,
    String birthday,
    String email,
    String about,
    String avatar,
    String smsId,
    String smsCode,
  ) =>
      gMutate(graphSQL: userRegistrationSQL, variables: {
        "fullName": fullName,
        "nickName": nickName,
        "birthday": birthday,
        "email": email,
        "about": about,
        "avatar": avatar,
        "smsId": smsId,
        "smsCode": smsCode
      });
}

var userRegistrationSQL = '''
mutation userRegistration(
    \$fullName: String!
    \$nickName: String!
    \$birthday: String!
    \$email: String!
    \$about: String!
    \$avatar: String!

    \$smsId: String!
    \$smsCode: String!) {
  userRegistration(input: {
    smsId: \$smsId,
    smsCode: \$smsCode,
  
    fullName: \$fullName,
    nickName: \$nickName,
    birthday: \$birthday,
    email: \$email,
    about: \$about,
    avatar: \$avatar,
  }) {
    userID
    accessTokenString
  }
}
''';
