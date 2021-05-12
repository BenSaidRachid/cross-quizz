import 'package:shared_preferences/shared_preferences.dart';

class Constants {
  Constants._();
  static SharedPreferences preferences;
  // ignore: non_constant_identifier_names
  static String API_BASE_URL = "http://10.0.2.2:1337";
  static const String IS_AUTH = "is_auth";
  static const String TOKEN = "token";
  static const String USER = "user";
}