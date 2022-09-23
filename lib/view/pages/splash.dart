import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:learn/view/pages/ODC.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class splash  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EasySplashScreen(
              backgroundColor: Colors.white,
              logo: Image(image: AssetImage('images/o.jpg'),),
              showLoader: true,
              navigator: odc(),
            ),
            LinearPercentIndicator(width: double.infinity,)
          ],
        ),
      ),



    );
  }
}
