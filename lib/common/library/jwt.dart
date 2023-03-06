import 'package:easy_im/common/library/local_storage_get.dart';

class LocalStorage {
  static String _imJwt = "im_jwt";
  static String _imAccount = "im_account";

  static setJWT(String jwt, String account) async {
    StorageService ss = StorageService();
    await ss.setString(_imJwt, jwt);
    await ss.setString(_imAccount, account);
  }

  static String? getJWT() {
    StorageService ss = StorageService();
    return ss.getString(_imJwt);
  }
}
