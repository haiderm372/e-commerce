import 'package:elite_commerce/common/widgets/bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'first_controller.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  static const route = '/first-screen';
  final FirstController firstCont = Get.put(FirstController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => firstCont.screens.elementAt(firstCont.index.value),
      ),
      bottomNavigationBar: Obx(
        () => KBottomBar(
          index: firstCont.index.value,
          update: (value) {
            firstCont.index(value);
          },
        ),
      ),
    );
  }
}
