import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:quiz/data/colors.dart';
import 'package:quiz/utils/size_config.dart';
import 'package:quiz/utils/check_connectivity.dart';
import 'package:quiz/widgets/custom_button.dart';
import 'package:quiz/widgets/custom_container.dart';
import 'package:quiz/widgets/custom_text.dart';
import 'package:quiz/widgets/form_error.dart';
import 'package:quiz/widgets/inputs.dart';
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
    String phone = _emailController.text.trim();
    String password = _passwordController.text.trim();
    try {} on dio.DioError catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        padding: EdgeInsets.only(top: 2.45 * SizeConfig.heightMultiplier),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(
                value: "Welcome Back,\nLog In",
                margin: EdgeInsets.only(top: 3.92 * SizeConfig.heightMultiplier),
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
                      CustomButton(
                        value: "Log In",
                        widthPercentage: 1,
                        backgroundColor: AppColors.secondary,
                        highlightColor: AppColors.secondary[700],
                        textColor: AppColors.primary,
                        fontWeight: FontWeight.w500,
                        uppercase: false,
                        onPress: () async {
                          if (await checkConnectivity()) {
                            logIn();

                            // if (_formKey.currentState.validate()) {
                            //   logIn();
                            // }
                          } else {
                            internetDialog(context: context);
                          }
                        },
                      ),
                      CustomText(
                        value: "Don't have an account?",
                        fontSize: 1.96 * SizeConfig.textMultiplier,
                        color: AppColors.brightGray,
                        margin: EdgeInsets.only(
                            top: 4.41 * SizeConfig.heightMultiplier,
                            bottom: 1.23 * SizeConfig.heightMultiplier),
                      ),
                      GestureDetector(
                        child: CustomText(
                          value: "Sign Up",
                          fontSize: 1.96 * SizeConfig.textMultiplier,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Get.back();
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
