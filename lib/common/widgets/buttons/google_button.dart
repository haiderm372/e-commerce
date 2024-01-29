// ignore_for_file: file_names

import 'package:elite_commerce/custom/styles.dart';
import 'package:flutter/material.dart';

class KGoogleButton extends StatelessWidget {
  const KGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icons/google.png',
            ),
            const Spacer(),
            Text(
              'Sign In with Google',
              style: kBlackStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
