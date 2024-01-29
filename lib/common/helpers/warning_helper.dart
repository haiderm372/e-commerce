import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom/color.dart';

class WarningHelper {
  Future showSnackBar(String msg, {bool? success}) async {
    await Get.closeCurrentSnackbar();
    Get.showSnackbar(
      GetSnackBar(
        messageText: Text(
          msg,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: success == true ? Colors.green : Colors.red,
        snackStyle: SnackStyle.FLOATING,
        duration: const Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
      ),
    );
  }

  static showLoading() {
    Get.dialog(
      Center(
        child: CircularProgressIndicator(
          color: kMainColor,
        ),
      ),
    );
  }
}
