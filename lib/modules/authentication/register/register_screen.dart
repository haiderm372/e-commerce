import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/buttons/k_button.dart';
import '../../../common/widgets/header/auth_header.dart';
import '../../../common/widgets/text_fields/k_passwordField.dart';
import '../../../common/widgets/text_fields/k_textField.dart';
import '../../../custom/color.dart';
import '../../../custom/styles.dart';
import './register_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  static const route = '/register-screen';
  final RegisterController registerCont = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const KHeader(),
          NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: ListView(
              children: [
                const SizedBox(
                  height: 250,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xffF8F8F8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Create an\nAccount',
                        style: kBlackStyle.copyWith(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      KTextField(
                        title: 'Full Name',
                        controller: registerCont.name,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      KTextField(
                        title: 'example@gmail.com',
                        controller: registerCont.email,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      KPasswordField(
                        controller: registerCont.password,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      KButton(
                        onTap: () {
                          registerCont.submitForm();
                        },
                        title: 'Register',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: kBlackStyle.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                  kMainColor.withOpacity(0.5),
                                ),
                              ),
                              child: Text(
                                'Sign in',
                                style: kGreenStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
