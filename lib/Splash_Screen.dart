// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fusionxcar/Auth/Login_Screen.dart';
import 'package:fusionxcar/Home/Home_Screen.dart';
import 'package:fusionxcar/Main_view/Main_view.dart';
import 'package:fusionxcar/consts/colors.dart';
import 'package:fusionxcar/consts/firebase_const.dart';
import 'package:fusionxcar/consts/images.dart';
import 'package:fusionxcar/consts/strings.dart';
import 'package:fusionxcar/consts/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'common_widgets/App_Logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 5), () {
      //  Get.to(() => LoginScreen());
      auth.authStateChanges().listen((User? user) {
        if (user != null && mounted) {
          Get.to(() => HomeScreen());
        } else {
          Get.to(() => LoginScreen());
        }
      });
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            20.heightBox,
            ApplogoWidgets(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            Spacer(),
            credits.text.fontFamily(semibold).white.make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
