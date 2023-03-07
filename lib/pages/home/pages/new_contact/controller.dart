import 'dart:async';
import 'package:easy_im/pages/home/pages/new_contact/provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../models/g_response.dart';
import '../../../../models/users.dart';

class NewContactsController extends GetxController {
  Timer? _debounceTimer;
  TextEditingController selectContactController = TextEditingController();

  SearchUsers? searchUsers;

  NewContactsProvider provider = Get.find();

  @override
  void onClose() {
    _debounceTimer?.cancel();
    super.onClose();
  }

  // 防抖 ...
  onChangeSelectContactController(value) {
    if (_debounceTimer?.isActive ?? false) _debounceTimer?.cancel();
    _debounceTimer = Timer(Duration(milliseconds: 300), () {
      selectContactController.value =
          selectContactController.value.copyWith(text: value);
      // print(selectContactController.text);
      searchUser(selectContactController.text);
    });
  }

  searchUser(String keyword) async {
    GResponse gp = await provider.searchUser(keyword);
    if (gp.GetError() != null) {
      print(gp.GetError()!.message);
      return;
    }

    if (gp.GetData() != null) {
      SearchUsers su = SearchUsers.fromJson(gp.GetData()!);
      searchUsers = su;
      update();
    }
  }
}
