import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:quiz/data/colors.dart';
import 'package:quiz/screens/auth/sign_up.dart';
import 'package:quiz/screens/home/home.dart';
import 'package:quiz/utils/size_config.dart';
import 'package:quiz/utils/check_connectivity.dart';
import 'package:quiz/widgets/button.dart';
import 'package:quiz/widgets/container.dart';
import 'package:quiz/widgets/inputs/email_input.dart';
import 'package:quiz/widgets/inputs/password_input.dart';
import 'package:quiz/widgets/text.dart';
import 'package:quiz/widgets/form_error.dart';
import 'package:quiz/widgets/header.dart';
import 'package:quiz/widgets/dialogs.dart';

class SignIn extends StatefulWidget {
  static const String routeName = "/logIn";

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _messageError = "";

  void logIn() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    try {} on dio.DioError catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppContainer(
        margin: EdgeInsets.only(top: 9.81 * SizeConfig.heightMultiplier),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(
                value: "Welcome\nBack",
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      EmailInput(
                          controller: _emailController,
                          margin: EdgeInsets.only(
                              top: 7.35 * SizeConfig.heightMultiplier,
                              bottom: 4.41 * SizeConfig.heightMultiplier)),
                      PasswordInput(
                          controller: _passwordController,
                          margin: EdgeInsets.only(
                              bottom: 1.72 * SizeConfig.heightMultiplier)),
                      FormError(
                          value: _messageError,
                          margin: EdgeInsets.only(
                              bottom: 6.74 * SizeConfig.heightMultiplier)),
                      AppButton(
                        value: "Log In",
                        widthPercentage: 1,
                        backgroundColor: AppColors.secondary,
                        highlightColor: AppColors.secondary[700],
                        textColor: AppColors.primary,
                        fontWeight: FontWeight.w500,
                        uppercase: false,
                        onPress: () async {
                          if (await checkConnectivity()) {
                            Get.toNamed(Home.routeName);
                            // if (_formKey.currentState.validate()) {
                            //   logIn();
                            // }
                          } else {
                            internetDialog(context: context);
                          }
                        },
                      ),
                      AppText(
                        value: "Don't have an account?",
                        fontSize: 1.96 * SizeConfig.textMultiplier,
                        color: AppColors.brightGray,
                        margin: EdgeInsets.only(
                            top: 4.41 * SizeConfig.heightMultiplier,
                            bottom: 1.23 * SizeConfig.heightMultiplier),
                      ),
                      GestureDetector(
                        child: AppText(
                          value: "Sign Up",
                          fontSize: 1.96 * SizeConfig.textMultiplier,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Get.toNamed(SignUp.routeName);
                        },
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
