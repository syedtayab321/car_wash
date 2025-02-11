import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

Widget Homebutton({width, height, icon, String? title, onpress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      5.heightBox,
      title!.text
          .fontFamily(semibold)
          .size(8)
          .color(purpleColor)
          .align(TextAlign.center)
          .make(),
    ],
  )
      .box
      .rounded
      .white
      .size(width, height)
      .padding(EdgeInsets.only(top: 10, bottom: 10))
      .shadowSm
      .make();
}
