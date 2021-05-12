import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:quiz/data/constants.dart';
import 'package:quiz/utils/api_header.dart';

class ApiAuth {
  static String _url = "/auth/local";
  static String _urlForgotPassword = "/auth/forgot-password";
  static String _urlResetPassword = "/auth/reset-password";
  static String _urlValidateCode = "/auth/validate-code";

  static Future<Response> signUp(Map<String, String> data) {
    return Dio()
        .post('${Constants.API_BASE_URL}$_url/register',
            data: data, options: Options(headers: ApiHeader.contentTypeJson()))
        .then((Response value) {
      Map<String, dynamic> data = value.data;
      if (data.containsKey('user')) {
        Constants.preferences.setString(Constants.TOKEN, data["jwt"]);
        Constants.preferences
            .setString(Constants.USER, jsonEncode(data["user"]));
      }
      return value;
    });
  }

  static Future<Response> login(Map<String, String> data) {
    return Dio()
        .post(Constants.API_BASE_URL + _url,
            data: data, options: Options(headers: ApiHeader.contentTypeJson()))
        .then((Response value) {
      Map<String, dynamic> data = value.data;
      if (data.containsKey('user')) {
        Constants.preferences.setString(Constants.TOKEN, data["jwt"]);
        Constants.preferences
            .setString(Constants.USER, jsonEncode(data["user"]));
      }
      return value;
    });
  }

  static Future<Response> forgotPassword(String email) {
    return Dio().post(Constants.API_BASE_URL + _urlForgotPassword,
        data: {"email": email},
        options: Options(headers: ApiHeader.contentTypeJson())
    );
  }

  static Future<Response> resetPassword(
      {String token, String password, String passwordConfirmation}) {
    Map<String, String> data = {
      "code": token,
      "password": password,
      "passwordConfirmation": passwordConfirmation
    };
    return Dio().post(Constants.API_BASE_URL + _urlResetPassword,
        data: data, options: Options(headers: ApiHeader.contentTypeJson())
    );
  }

  static Future<Response> validateCode({String code, String token}) {
    Map<String, String> data = {
      "code": code,
      "token": token,
    };
    return Dio().post(Constants.API_BASE_URL + _urlValidateCode,
        data: data, options: Options(headers: ApiHeader.contentTypeJson())
    );
  }

  static void logOut() {
    Constants.preferences.setString(Constants.TOKEN, null);
    Constants.preferences.setString(Constants.USER, null);
  }

  static bool isAuth() {
    return Constants.preferences.getString(Constants.TOKEN) != null;
  }
}
