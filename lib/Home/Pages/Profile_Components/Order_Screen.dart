import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Orders_Components/Order_Detail_Screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        iconTheme: const IconThemeData(color: whiteColor),
        title: "My Orders"
            .text
            .fontWeight(FontWeight.w600)
            .color(whiteColor)
            .make(),
      ),
      body:
      // StreamBuilder(
      //     stream: Firestoreservices.getAllorders(),
      //     builder:
      //         (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      //       if (!snapshot.hasData) {
      //         return Center(
      //           child: loadingIndicator(),
      //         );
      //       } else if (snapshot.data!.docs.isEmpty) {
      //         return "No Order Yet!".text.color(darkFontGrey).makeCentered();
      //       } else {
      //         var data = snapshot.data!.docs;
      //         return

      Padding(
        padding: const EdgeInsets.all(16.0), // Add padding for better spacing
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Display orders in a responsive list
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.white,
                    elevation: 4,
                    child: ListTile(
                      leading: "${index + 1}"
                          .text
                          .fontWeight(FontWeight.bold)
                          .color(Colors.white70)
                          .make(),
                      title: "2335467488Xyz2233"
                      // data[index]['order_code']
                          .toString()
                          .text
                          .color(whiteColor)
                          .fontWeight(FontWeight.w600)
                          .make(),
                      subtitle: "\$100"
                      // data[index]['total_amount']
                          .toString()
                      //.numCurrencyWithLocale()
                          .text
                          .color(golden)
                          .fontWeight(FontWeight.bold)
                          .make(),
                      trailing: IconButton(
                        onPressed: () {
                          Get.to(() => const OrdersDetailScreen(
                            // data: data[index],
                          ));
                        },
                        icon: const Icon(Icons.arrow_forward_ios_rounded),
                        color: Colors.white70,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      //   }
      // } }),
    );
  }
}
