import 'package:fusionxcar/consts/List.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/contant.dart';

class PaymentMethod extends StatelessWidget {
  // final dynamic data;
  PaymentMethod({
    super.key,
  });

  var PaymentIndex = 0.obs;

  changepaymentindex(index) {
    PaymentIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    // var Controller = Get.find<CartController>();
    return
        // Obx(
        //   () =>

        Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        iconTheme: IconThemeData(color: whiteColor),
        title: "Choose Payment Method"
            .text
            .fontWeight(FontWeight.w600)
            .color(whiteColor)
            .make(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: SizedBox(
            width: double.infinity,
            height: 45,
            child:
                //  Controller.placingorder.value
                //     ? Center(
                //         child: loadingIndicator(),
                //       )
                //     :
                ElevatedButton(
              onPressed: () async {
                // await Controller.PlaceMyOrder(
                //   orderpaymentmethod:
                //       PaymentMethods[Controller.PaymentIndex.value],
                //   totalamount: Controller.totalp.value,
                //   descriptionimg: Controller.Descriptionimagelink,
                // );
                // await Controller.clearCart();
                VxToast.show(context, msg: "Order Placed Successfully");
                // Get.offAll(HomeScreen());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  )),
              child: const Text(
                'Place My Order',
                style: TextStyle(
                  color: purpleColor,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Obx(
          () => Column(
            children: List.generate(PaymentMethodImg.length, (index) {
              return GestureDetector(
                onTap: () {
                  changepaymentindex(index);
                  //Controller.changepaymentindex(index);
                },
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: PaymentIndex.value == index
                            ? whiteColor
                            : Colors.transparent,
                        width: 4,
                        //style: BorderStyle.solid,
                      )),
                  margin: EdgeInsets.only(bottom: 8),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.asset(
                        PaymentMethodImg[index],
                        width: double.infinity,
                        colorBlendMode: PaymentIndex.value == index
                            ? BlendMode.darken
                            : BlendMode.color,
                        color: PaymentIndex.value == index
                            ? Colors.black.withOpacity(0.4)
                            : Colors.transparent,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      PaymentIndex.value == index
                          ? Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                  activeColor: whiteColor,
                                  checkColor: purpleColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  value: true,
                                  onChanged: (value) {}),
                            )
                          : Container(),
                      Positioned(
                          bottom: 10,
                          right: 10,
                          child: PaymentMethods[index]
                              .text
                              .white
                              .fontWeight(FontWeight.w600)
                              .make()),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
    //);
  }
}
