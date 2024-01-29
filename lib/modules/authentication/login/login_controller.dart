import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../common/helpers/warning_helper.dart';
import '../../main/first/first_screen.dart';

class LoginController extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> submitForm() async {
    if (email.text.isNotEmpty && email.text.isNotEmpty) {
      WarningHelper.showLoading();
      await Future.delayed(const Duration(seconds: 2));
      Get.back();
      await WarningHelper().showSnackBar('Successfully Login!', success: true);
      Get.offAllNamed(FirstScreen.route);
    } else {
      await WarningHelper().showSnackBar('Require All Feilds');
    }
  }
}
