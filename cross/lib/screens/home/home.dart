import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz/data/colors.dart';
import 'package:quiz/widgets/container.dart';
import 'package:quiz/widgets/text.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppContainer(
        child: Column(
          children: [
            AppText(
              value: "Choose a quiz",
              fontSize: 32,
              margin: EdgeInsets.only(top: 40, bottom: 32),
              alignment: Alignment.centerLeft,
              color: Colors.white,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) => SizedBox(height: 40,),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        color: AppColors.steelGray,
                        borderRadius: BorderRadius.circular(14)
                    ),
                    child: AppText(
                      value: "Test",
                      color: Colors.white,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
