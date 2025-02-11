import 'package:fusionxcar/consts/contant.dart';
import 'package:fusionxcar/consts/styles.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

Widget featureButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 60,
        height: 60,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .width(300)
      .margin(EdgeInsets.symmetric(horizontal: 4))
      .padding(EdgeInsets.all(4))
      .roundedSM
      .outerShadowSm
      .make()
      .onTap(() {
    // Get.to(() => CatagoryDetailScreen(
    //       title: title,
    //     ));
  });
}
