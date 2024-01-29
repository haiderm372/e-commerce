// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:elite_commerce/custom/styles.dart';

class KPasswordField extends StatelessWidget {
  const KPasswordField({required this.controller, super.key});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      placeholder: '*********',
      obscuringCharacter: '*',
      obscureText: true,
      placeholderStyle: kGreyStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      style: kBlackStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: const Color(0xffDEDEDE),
          width: 1,
        ),
      ),
    );
  }
}
