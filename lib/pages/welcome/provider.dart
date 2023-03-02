import '../../common/library/base_provider.dart';

class WelcomeProvider extends BaseProvider {
  netTest() => gQuery(graphSQL: sql);
  netTest2() => gQuery(graphSQL: sql2);
  netTest3() => gMutate(graphSQL: sql3);
}

var sql = '''
  query s2 {
  captcha {
    base64Captcha
  }
}
''';

var sql2 = '''
query userInfo {
  user{
    role
    account
    accountName
  }
}

''';

var sql3 = '''
mutation chat {
  chatGPT(input: {
    message: "hello world"
  }) {
    message
  }
}
''';