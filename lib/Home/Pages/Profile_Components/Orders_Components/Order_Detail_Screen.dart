import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'Order_Place_Details_Screen.dart';
import 'Order_Status_SCreen.dart';
import 'package:intl/intl.dart' as intl;

class OrdersDetailScreen extends StatelessWidget {
  // final dynamic data;
  const OrdersDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: purpleColor,
        title: "Order Details"
            .text
            .fontWeight(FontWeight.w600)
            .color(whiteColor)
            .make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Column(
                children: [
                  OrderStatus(
                    color: redColor,
                    icon: Icons.done,
                    title: "Placed",
                    showdone: false,
                  ),
                  OrderStatus(
                    color: Vx.blue900,
                    icon: Icons.thumb_up,
                    title: "Confirmed",
                    showdone: false,
                  ),
                  OrderStatus(
                    color: Colors.yellow,
                    icon: Icons.car_crash,
                    title: "Delivery",
                    showdone: true,
                  ),
                  OrderStatus(
                    color: Colors.purple,
                    icon: Icons.done_all_rounded,
                    title: "Delivered",
                    showdone: false,
                  ),
                  const Divider(),
                  10.heightBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      orderplacedetails(
                        d1: '2335467488Xyz2233',
                        d2: "Pick up from Office",
                        title1: "Order Code",
                        title2: "Car Pickup Method",
                      ),
                      orderplacedetails(
                        d1: "20/10/2024",
                        d2: "Cash On Delivery",
                        title1: "Order Date",
                        title2: "Payment Method",
                      ),
                      orderplacedetails(
                        d1: "Unpaid",
                        d2: "Order Placed",
                        title1: "Payment Status",
                        title2: "Delivery Status",
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "Car Owner Address"
                                      .text
                                      .color(whiteColor)
                                      .fontWeight(FontWeight.w600)
                                      .make(),
                                  "ABX DEV".text.color(Colors.white70).make(),
                                  "abxdev@gmail.com"
                                      .text
                                      .color(Colors.white70)
                                      .make(),
                                  "Jakarta, Indonesia"
                                      .text
                                      .color(Colors.white70)
                                      .make(),
                                  "Indonesia".text.color(Colors.white70).make(),
                                  "Jakarta".text.color(Colors.white70).make(),
                                  "+920000000000"
                                      .text
                                      .color(Colors.white70)
                                      .make(),
                                  "00520".text.color(Colors.white70).make(),
                                ],
                              ),
                            ),
                            SizedBox(width: 20), // Add some spacing
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "Total Amount"
                                      .text
                                      .color(Colors.white)
                                      .fontWeight(FontWeight.w600)
                                      .make(),
                                  "\$100"
                                      .text
                                      .color(golden)
                                      .fontWeight(FontWeight.bold)
                                      .make(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: "Description"
                            .text
                            .white
                            .fontWeight(FontWeight.w600)
                            .make(),
                      ),
                      5.heightBox,
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: "This is my Car I want to be cleaned"
                            .text
                            .color(Colors.white70)
                            .make(),
                      ),
                      5.heightBox,
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: "Car Images"
                            .text
                            .white
                            .fontWeight(FontWeight.w600)
                            .make(),
                      ),
                      5.heightBox,
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Image.asset(
                            imgFc1,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ).box.outerShadowMd.roundedSM.color(purpleColor).make(),
                  const Divider(),
                  10.heightBox,
                  "Ordered Service"
                      .text
                      .size(16)
                      .fontWeight(FontWeight.w600)
                      .color(whiteColor)
                      .makeCentered(),
                  10.heightBox,
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(1, (index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          orderplacedetails(
                            title1: "Placed",
                            title2: "\$100",
                            d1: "Car Wash",
                            d2: "Refundable",
                          ),
                          const Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 16.0),
                          ),
                          const Divider(),
                        ],
                      );
                    }).toList(),
                  )
                      .box
                      .outerShadowMd
                      .color(purpleColor)
                      .margin(const EdgeInsets.only(bottom: 4))
                      .make(),
                  20.heightBox,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
