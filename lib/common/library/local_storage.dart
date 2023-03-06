import 'dart:convert';
import 'package:easy_im/common/library/local_storage_service.dart';
import 'package:easy_im/models/users.dart';

class LocalStorage {
  static String _imJwt = "im_jwt";
  static String _imAccount = "im_account";
  static String _imUserInfo = "im_userInfo";
  static StorageService _storage = StorageService();

  static setJWT(String jwt, String account) async {
    await _storage.setString(_imJwt, jwt);
    await _storage.setString(_imAccount, account);
  }

  static String? getJWT() {
    return _storage.getString(_imJwt);
  }

  static delJWT() async {
    await _storage.remove(_imJwt);
  }

  static UserInfo? getUserInfo() {
    String? userInfoStr = _storage.getString(_imUserInfo);
    if (userInfoStr == null) {
      return null;
    }

    UserInfo ui = UserInfo.fromJson(jsonDecode(userInfoStr));
    return ui;
  }

  static setUserInfo(UserInfo userInfo) async {
    var js = jsonEncode(userInfo.toJson());
    await _storage.setString(_imUserInfo, js);
  }
}
