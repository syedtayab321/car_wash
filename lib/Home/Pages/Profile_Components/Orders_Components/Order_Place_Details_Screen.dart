import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

Widget orderplacedetails({title1, title2, d1, d2}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16), // Increased vertical padding for web
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded( // Allows for better space management
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "$title1".text.fontWeight(FontWeight.w600).white.make(),
              "$d1".text.color(Colors.white70).fontWeight(FontWeight.w600).make(),
            ],
          ),
        ),
        ///////////////////////////////////////////////////
        SizedBox(
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "$title2".text.fontWeight(FontWeight.w600).white.make(),
              "$d2".text.color(Colors.white70).make(),
            ],
          ),
        ),
      ],
    ),
  );
}
