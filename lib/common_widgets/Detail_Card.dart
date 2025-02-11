import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

Widget detailcard({required double width, String? count, String? title}) {
  return Container(
    width: width > 600 ? 300 : double.infinity,
    height: 80,
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 4.0,
          offset: Offset(0, 2), // Shadow position
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        count != null
            ? count.text
            .fontWeight(FontWeight.w500)
            .size(16)
            .color(darkFontGrey)
            .make()
            : const SizedBox.shrink(),
        const SizedBox(height: 5),
        title != null
            ? title.text.color(darkFontGrey).make()
            : const SizedBox.shrink(),
      ],
    ),
  );
}
