import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

Widget bgWidget({required Widget child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill,
        colorFilter: ColorFilter.mode(
          buttoncolor.withOpacity(0.9),
          BlendMode.color,
        ),
      ),
    ),
    child: child,
  );
}
