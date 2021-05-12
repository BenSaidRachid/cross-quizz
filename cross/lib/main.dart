import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/data/colors.dart';
import 'package:quiz/data/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:quiz/utils/size_config.dart';
import 'package:quiz/services/api/auth.dart';
import 'package:quiz/screens/home_screen.dart';
import 'package:quiz/screens/auth/sign_in_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.preferences = await SharedPreferences.getInstance();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(scaffoldBackgroundColor: AppColors.primary),
            home:  ApiAuth.isAuth() ? Home() : SignIn(),
            routes: {
              Home.routeName: (context) => Home(),
              SignIn.routeName: (context) => SignIn(),
            },
          );
        },
      );
    });
  }
}
