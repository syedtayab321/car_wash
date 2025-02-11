import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

Widget OrderStatus({icon, title, color, showdone}) {
  return ListTile(
    leading: Icon(
      icon,
      color: color,
    )
        .box
        .roundedSM
        .padding(EdgeInsets.all(4))
        .border(
          color: color,
        )
        .make(),
    trailing: SizedBox(
      height: 100,
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          "$title".text.color(Colors.white70).make(),
          showdone
              ? const Icon(
                  Icons.done,
                  color: redColor,
                )
              : Container(),
        ],
      ),
    ),
  );
}
