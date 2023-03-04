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
