import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../common/helpers/warning_helper.dart';

class RegisterController extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();

  Future<void> submitForm() async {
    bool validate =
        email.text.isNotEmpty && email.text.isNotEmpty && name.text.isNotEmpty;

    if (validate) {
      WarningHelper.showLoading();
      await Future.delayed(const Duration(seconds: 2));
      Get.back();
      await WarningHelper().showSnackBar(
        'Successfully Register!',
        success: true,
      );
    } else {
      await WarningHelper().showSnackBar('Require All Feilds');
    }
  }
}
