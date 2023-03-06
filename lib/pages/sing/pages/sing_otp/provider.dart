import '../../../../common/library/base_provider.dart';

class SingOTPPageProvider extends BaseProvider {
  sms(String phoneNumber) => gMutate(graphSQL: sendSMSSQL, variables: {
        'phoneNumber': phoneNumber,
      });

  checkSMS(String smsId, String smsCode) =>
      gQuery(graphSQL: checkSMSSQL, variables: {
        'smsId': smsId,
        'smsCode': smsCode,
      });

  login(String smsId, String smsCode) => gQuery(graphSQL: loginSQL, variables: {
        'smsId': smsId,
        'smsCode': smsCode,
      });
}

var sendSMSSQL = '''
mutation sms(\$phoneNumber: String!) {
  sendSMS(input: {
    phoneNumber: \$phoneNumber
  }) {
    smsId
  }
}
''';

var checkSMSSQL = '''
query checkSMS(\$smsId: String!, \$smsCode: String!) {
  checkSMS(smsId: \$smsId, smsCode: \$smsCode) {
    ok
  } 
}
''';

var loginSQL = '''
query login(\$smsId: String!, \$smsCode: String!) {
  userLogin(smsId: \$smsId, smsCode: \$smsCode) {
    userID
    accessTokenString
  }
}
''';
