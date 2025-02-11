import 'package:fusionxcar/Controller/Profuct_Controller.dart';
import 'package:fusionxcar/consts/List.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../Profile_Components/Messages/Chat_Screen.dart';

class ItemsDetailScreen extends StatelessWidget {
  final String? title;
  final dynamic data;
  const ItemsDetailScreen({super.key, required this.title, required this.data});

  String formatCurrency(num amount) {
    // Use a general locale, and force the currency to AED
    final format =
        NumberFormat.currency(locale: "en", symbol: "AED", name: "AED");
    return format.format(amount);
  }

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProductController());
    return WillPopScope(
      onWillPop: () async {
        controller.resetvalues();
        return true;
      },
      child: Scaffold(
        backgroundColor: purpleColor,
        appBar: AppBar(
          backgroundColor: purpleColor,
          leading: IconButton(
              onPressed: () {
                controller.resetvalues();
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: whiteColor,
              )),
          title:
              title!.text.color(whiteColor).fontWeight(FontWeight.bold).make(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: whiteColor,
              ),
            ),
            Obx(
              () => IconButton(
                onPressed: () {
                  if (controller.isFav.value) {
                    // controller.removewishlist(data.id, context);
                    controller.isFav(false);
                  } else {
                    // controller.addtowishlist(data.id, context);
                    controller.isFav(true);
                  }
                },
                icon: Icon(
                  Icons.favorite_outlined,
                  color: controller.isFav.value ? redColor : whiteColor,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //////swipers section//////////
                    VxSwiper.builder(
                        autoPlay: true,
                        height: 350,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1.0,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc1,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                    10.heightBox,
                    ////title and details section

                    title!.text
                        .color(whiteColor)
                        .fontWeight(FontWeight.w600)
                        .size(16)
                        .make(),

                    //////////rating
                    10.heightBox,

                    //////
                    VxRating(
                      isSelectable: false,
                      value: 4,
                      onRatingUpdate: (Value) {},
                      normalColor: whiteColor,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      maxRating: 5,
                      stepInt: false,
                    ),

                    /////////////
                    10.heightBox,
                    //////////////
                    "\$40"
                        .text
                        .color(golden)
                        .fontWeight(FontWeight.bold)
                        .size(18)
                        .make(),
                    ///////////
                    10.heightBox,
                    //////////////

                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "ABX DEV"
                                .text
                                .color(purpleColor)
                                .fontWeight(FontWeight.w600)
                                .make(),
                            "BRAND NAME"
                                .text
                                .color(golden)
                                .fontWeight(FontWeight.w600)
                                .size(16)
                                .make()
                          ],
                        )),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.message_rounded,
                            color: darkFontGrey,
                          ).onTap(() {
                            Get.to(
                              () => ChatScreen(),
                              // arguments: [data['P_saller'], data['vendor_id']],
                            );
                          }),
                        ),
                      ],
                    )
                        .box
                        .height(60)
                        .padding(EdgeInsets.symmetric(horizontal: 16))
                        .color(textfieldGrey)
                        .make(),
                    ////////// Color Section//////////////////
                    20.heightBox,
                    //////////////
                    ///
                    Obx(
                      () => Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Location".text.color(whiteColor).make(),
                              ),
                              Row(
                                children: [
                                  "Jakarta, Indonesia"
                                      .text
                                      .color(whiteColor)
                                      .make(),
                                ],
                              )
                              //////////////
                              // Row(
                              //   children: List.generate(
                              //     // data['P_colors'].length,
                              //     // (index) =>
                              //     Stack(
                              //       alignment: Alignment.center,
                              //       children: [
                              //         VxBox()
                              //             .size(40, 40)
                              //             .color(Color(data['P_colors'][index])
                              //                 .withOpacity(1.0))
                              //             .roundedFull
                              //             .margin(EdgeInsets.symmetric(
                              //                 horizontal: 4))
                              //             .make()
                              //             .onTap(() {
                              //           controller.changecolorindex(index);
                              //         }),
                              //         Visibility(
                              //           visible: index ==
                              //               controller.colorindex.value,
                              //           child: Icon(
                              //             Icons.done,
                              //             color: Colors.white,
                              //           ),
                              //         )
                              //       ],
                              //     ),
                              //   ),
                              // ),
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),
                          ////tital row

                          //quantity row
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Hour's".text.color(whiteColor).make(),
                              ),
                              //////////////
                              // Obx(
                              //   () =>

                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        controller.decreaseQuantity();
                                        controller.Calculatetotalprice(
                                            int.parse("\$100"));
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        color: whiteColor,
                                      )),
                                  controller.quantity.value.text
                                      .color(whiteColor)
                                      .size(16)
                                      .fontWeight(FontWeight.bold)
                                      .make(),
                                  IconButton(
                                      onPressed: () {
                                        controller
                                            .increaseQuantity(int.parse("1"));
                                        controller.Calculatetotalprice(
                                            int.parse("\$100"));
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: whiteColor,
                                      )),
                                  10.widthBox,
                                  "(${"1 Hour Is"} available)"
                                      .text
                                      .color(whiteColor)
                                      .make(),
                                ],
                              ),
                              // ),
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),

                          /////total row
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Total".text.color(whiteColor).make(),
                              ),
                              //////////////
                              formatCurrency(100)
                                  // "${controller.totalprice.value}"
                                  // .numCurrencyWithLocale(locale: "en_AE")
                                  .text
                                  .color(whiteColor)
                                  .size(16)
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),
                        ],
                      ).box.color(purpleColor).shadowSm.make(),
                    ),

                    //////////
                    10.heightBox,
                    ////////////// Description ////////////
                    "Description"
                        .text
                        .color(whiteColor)
                        .fontWeight(FontWeight.w600)
                        .make(),
                    /////
                    10.heightBox,
                    ////
                    "${"Hello this is discription of your brand"}"
                        .text
                        .color(whiteColor)
                        .make(),
                    ////////////
                    10.heightBox,
                    /////////////Button Section
                    ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(
                          ItemsDetailsButtonList.length,
                          (index) => ListTile(
                                title: ItemsDetailsButtonList[index]
                                    .text
                                    .color(whiteColor)
                                    .fontWeight(FontWeight.w600)
                                    .make(),
                                trailing: Icon(
                                  Icons.arrow_forward,
                                  color: whiteColor,
                                ),
                              )),
                    ),
                    20.heightBox,
                    ////////////product you may like section
                    productyoumaybelike.text
                        .color(whiteColor)
                        .size(16)
                        .fontWeight(FontWeight.bold)
                        .make(),
                    ////////////////
                    10.heightBox,
                    //////////
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          6,
                          (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgFc1,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              10.heightBox,
                              "Car Polishing"
                                  .text
                                  .fontFamily(semibold)
                                  .color(purpleColor)
                                  .make(),
                              10.heightBox,
                              "\$200"
                                  .text
                                  .color(purpleColor.withOpacity(0.8))
                                  .fontFamily(bold)
                                  .size(16)
                                  .make(),
                            ],
                          )
                              .box
                              .white
                              .margin(
                                EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                              )
                              .roundedSM
                              .padding(EdgeInsets.all(8))
                              .make(),
                        ),
                      ),
                    )

                    /////////
                  ],
                ),
              ),
            )),
            ////////////////
            Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (controller.quantity.value > 0) {
                        // controller.addtocart(
                        //   color: data['P_colors'][controller.colorindex.value],
                        //   context: context,
                        //   vendoriD: data['vendor_id'],
                        //   img: data['P_imgs'][0],
                        //   quantity: controller.quantity.value,
                        //   sallername: data['P_saller'],
                        //   title: data['p_name'],
                        //   totalprice: controller.totalprice.value,
                        // );
                        VxToast.show(context, msg: "Added Successfully");
                        //Get.to(() => ShippinfDetails());
                      } else {
                        VxToast.show(context,
                            msg: "Minimum 1 Service is Required");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        )
                        // const Color(0xFF9F7BFF),
                        ),
                    child: const Text(
                      'Add to Cart',
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
            )
          ],
        ),
      ),
    );
  }
}
