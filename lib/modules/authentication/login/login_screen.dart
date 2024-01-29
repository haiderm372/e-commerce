import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/buttons/google_button.dart';
import '../../../common/widgets/buttons/k_button.dart';
import '../../../common/widgets/header/auth_header.dart';
import '../../../common/widgets/text_fields/k_passwordField.dart';
import '../../../common/widgets/text_fields/k_textField.dart';
import '../../../custom/color.dart';
import '../../../custom/styles.dart';
import '../register/register_screen.dart';
import './login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const route = '/login-screen';
  final LoginController loginCont = Get.put(LoginController());

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
                        'Welcome Back!',
                        style: kBlackStyle.copyWith(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Sign in continue.',
                        style: kBlackStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      KTextField(
                        title: 'example@gmail.com',
                        controller: loginCont.email,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      KPasswordField(
                        controller: loginCont.password,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: const Color(0xffDCDCDC),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Or',
                                style: kGreyStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: const Color(0xffDCDCDC),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const KGoogleButton(),
                      const SizedBox(
                        height: 20,
                      ),
                      KButton(
                        onTap: () {
                          loginCont.submitForm();
                        },
                        title: 'DIVE IN',
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
                              "Don't have an account?",
                              style: kBlackStyle.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.toNamed(RegisterScreen.route);
                              },
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                  kMainColor.withOpacity(0.5),
                                ),
                              ),
                              child: Text(
                                'Sign Up',
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
