import 'package:elite_commerce/custom/color.dart';
import 'package:flutter/material.dart';

class KHeader extends StatelessWidget {
  const KHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        color: kMainColor,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/auth_image.png'),
        ),
      ),
    );
  }
}
