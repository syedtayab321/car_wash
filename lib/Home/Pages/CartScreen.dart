import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Shipping_Detail_Screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: whiteColor,
          ),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () async {
                Get.to(() => ShippinfDetails());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: purpleColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: const Text(
                'Process Payment',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        automaticallyImplyLeading: false,
        title: "Cart Items"
            .text
            .color(whiteColor)
            .fontWeight(FontWeight.bold)
            .make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: isWeb
            ? Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return const CartItemTile();
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    TotalPriceWidget(),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Column(
                  children: [
                    Text(
                      'Suggested Items',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: purpleColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Add your suggested items here
                    // For example:
                    // SuggestedItemWidget(),
                    // SuggestedItemWidget(),
                  ],
                ),
              ),
            ),
          ],
        )
            : Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return const CartItemTile();
                },
              ),
            ),
            const SizedBox(height: 10),
            const TotalPriceWidget(),
          ],
        ),
      ),
    );
  }
}

class CartItemTile extends StatelessWidget {
  const CartItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: Image.asset(
          imgFc1,
          width: 80,
          fit: BoxFit.cover,
        ),
        title: "Car Cleaning"
            .text
            .fontWeight(FontWeight.bold)
            .size(16)
            .color(Colors.black)
            .make(),
        subtitle: "16/10/2024"
            .text
            .fontWeight(FontWeight.bold)
            .color(darkFontGrey)
            .make(),
        trailing: const Icon(
          Icons.delete,
          color: redColor,
        ).onTap(() {
          // Firestoreservices.deletedacument(data[index].id);
        }),
      ),
    );
  }
}

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          "Total Price"
              .text
              .color(darkFontGrey)
              .fontWeight(FontWeight.w600)
              .make(),
          "100"
              .text
              .color(purpleColor)
              .fontWeight(FontWeight.w600)
              .make(),
        ],
      )
          .box
          .padding(const EdgeInsets.all(12))
          .color(golden)
          .width(double.infinity)
          .roundedSM
          .make(),
    );
  }
}
