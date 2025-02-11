import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

Widget senderbubble(
    //DocumentSnapshot data
    ) {
  // var t =
  //     data['created_on'] == null ? DateTime.now() : data['created_on'].toDate();
  // var time = intl.DateFormat("h:mma").format(t);

  return Directionality(
    textDirection: TextDirection.ltr,
    // data['uid'] == currentuser!.uid ? TextDirection.rtl : TextDirection.ltr,
    child: Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          color: whiteColor,
          // color: data['uid'] == currentuser!.uid ? buttoncolor : darkFontGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Hello How are you?"
              //"${data['message']}"
              .text
              .color(purpleColor)
              .size(16)
              .make(),
          10.heightBox,
          //time
          "12:00".text.color(purpleColor.withOpacity(0.5)).make(),
        ],
      ),
    ),
  );
}
