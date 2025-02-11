import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

class ApplogoWidgets extends StatelessWidget {
  const ApplogoWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(icAppLogo)
        .box
        .white
        .size(77, 77)
        .padding(EdgeInsets.all(8))
        .rounded
        .make();
  }
}
