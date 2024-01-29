import 'package:elite_commerce/custom/color.dart';
import 'package:elite_commerce/custom/styles.dart';
import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  const KButton({required this.title, required this.onTap, super.key});
  final Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: kMainColor,
          elevation: 0.0,
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          title,
          style: kWhiteStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
