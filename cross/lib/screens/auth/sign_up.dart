import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:quiz/data/colors.dart';
import 'package:quiz/screens/home/home.dart';
import 'package:quiz/utils/size_config.dart';
import 'package:quiz/utils/check_connectivity.dart';
import 'package:quiz/widgets/back_arrow.dart';
import 'package:quiz/widgets/button.dart';
import 'package:quiz/widgets/container.dart';
import 'package:quiz/widgets/text.dart';
import 'package:quiz/widgets/form_error.dart';
import 'package:quiz/widgets/inputs/email_input.dart';
import 'package:quiz/widgets/inputs/password_input.dart';
import 'package:quiz/widgets/header.dart';
import 'package:quiz/widgets/dialogs.dart';

class SignUp extends StatefulWidget {
  static const String routeName = "/register";

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _messageError = "";

  void register() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    try {} on dio.DioError catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppContainer(
        margin: EdgeInsets.only(top: 2.45 * SizeConfig.heightMultiplier),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackArrow(
                margin:
                    EdgeInsets.only(bottom: 2.45 * SizeConfig.heightMultiplier),
              ),
              Header(
                value: "New\nAccount",
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
                        value: "Sign up",
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
                            //   register();
                            // }
                          } else {
                            internetDialog(context: context);
                          }
                        },
                      ),
                      AppText(
                        value: "Already have an account?",
                        fontSize: 1.96 * SizeConfig.textMultiplier,
                        color: AppColors.brightGray,
                        margin: EdgeInsets.only(
                            top: 4.41 * SizeConfig.heightMultiplier,
                            bottom: 1.23 * SizeConfig.heightMultiplier),
                      ),
                      GestureDetector(
                        child: AppText(
                          value: "Sign in",
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
