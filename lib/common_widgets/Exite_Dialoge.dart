import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Widget ExitDialog(context) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      width: Get.width > 600 ? 400 : double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title
          "Confirm"
              .text
              .color(darkFontGrey)
              .size(18)
              .fontWeight(FontWeight.bold)
              .make(),
          const Divider(),
          const SizedBox(height: 10),
          "Are You Sure You Want To Leave?"
              .text
              .size(16)
              .color(darkFontGrey)
              .make(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: SizedBox(
                  height: 56,
                  width: Get.width > 600 ? 150 : double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      SystemNavigator.pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9F7BFF),
                    ),
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: SizedBox(
                  height: 56,
                  width: Get.width > 600 ? 150 : double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9F7BFF),
                    ),
                    child: const Text(
                      'No',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ).box.color(lightGrey).roundedSM.padding(const EdgeInsets.all(12)).make(),
    ),
  );
}
