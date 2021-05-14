import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/utils/size_config.dart';
import 'package:quiz/widgets/text.dart';

abstract class Dialog {
  static void show(BuildContext context, AlertDialog dialog) {
    showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return dialog;
      },
    );
  }
}

void internetDialog({
  BuildContext context,
}) async {
  AlertDialog dialog = AlertDialog(
    title: Text("You are disconnected from the Internet",
        style: TextStyle(fontWeight: FontWeight.w600)),
    content: Text("Please check your internet connection"),
    actions: <Widget>[
      TextButton(
          onPressed: () {
            Get.back();
          },
          child: AppText(
              value: "Close", fontSize: 2.70 * SizeConfig.textMultiplier))
    ],
  );
  Dialog.show(context, dialog);
}
