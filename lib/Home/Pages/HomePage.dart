import 'package:fusionxcar/Controller/Home_Controller.dart';
import 'package:fusionxcar/common_widgets/Home_button.dart';
import 'package:fusionxcar/consts/List.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'components/feature_button.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final String _rating = "4.5";
  @override
  Widget build(BuildContext context) {
    var Controller = Get.find<HomeController>();
    // var Controller = Get.put(ProductController());
    return Container(
        padding: const EdgeInsets.all(12),
        color: purpleColor,
        width: context.screenWidth,
        height: context.screenHeight,
        child: SafeArea(
            child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: Controller.SearchController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                      ).onTap(() {
                        if (Controller
                            .SearchController.text.isNotEmptyAndNotNull) {
                          // Get.to(() => SearchScreen(
                          //       title: Controller.SearchController.text,
                          //     ));
                        }
                      }),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: lightGrey,
                      hintText: searchanything,
                      hintStyle: const TextStyle(
                        color: textfieldGrey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            5.heightBox,
            ////////////////////////////
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    /////swipers brands
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: Sliderlist.length,
                        itemBuilder: (context, Index) {
                          return Image.asset(
                            Sliderlist[Index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).margin(
                                const EdgeInsets.symmetric(horizontal: 8),).make();}),

                    ///////////////
                    10.heightBox,
                    ////////// Deal_Button ////////
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: List.generate(
                    //       2,
                    //       (index) => Homebutton(
                    //             height: context.screenHeight * 0.15,
                    //             width: context.screenWidth / 2.5,
                    //             icon: index == 0 ? icTodaysDeal : icFlashDeal,
                    //             title: index == 0 ? todaydeal : Flashdeal,
                    //           )),
                    // ),

                    ///////////
                    //10.heightBox,
                    //// 2nd Swipers

                    // VxSwiper.builder(
                    //     aspectRatio: 16 / 9,
                    //     autoPlay: true,
                    //     height: 150,
                    //     enlargeCenterPage: true,
                    //     itemCount: SecoundSliderlist.length,
                    //     itemBuilder: (context, Index) {
                    //       return Image.asset(
                    //         SecoundSliderlist[Index],
                    //         fit: BoxFit.fill,
                    //       )
                    //           .box
                    //           .rounded
                    //           .clip(Clip.antiAlias)
                    //           .margin(
                    //             EdgeInsets.symmetric(horizontal: 8),
                    //           )
                    //           .make();
                    //     }),
                    ////////////
                    //10.heightBox,
                    ///////// Catagory Button /////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        4,
                        (index) => Homebutton(
                          height: 100,
                          width: context.screenWidth / 4.5, icon: index == 0 ? icTopCategories : index == 1
                                  ? icBrands : index == 2 ? icTopSeller : icmenu,
                          title: index == 0 ? topcatagatories : index == 1
                              ? brand
                                  : index == 2
                                      ? topSalers
                                      : menu,
                        ),
                      ),
                    ),
                    /////////////////
                    10.heightBox,
                    ////////////////// Feature Catagories ///////////////
                    // Align(
                    //   alignment: Alignment.centerLeft,
                    //   child:
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        futurecatagories.text
                            .color(whiteColor)
                            .size(18)
                            .fontFamily(semibold)
                            .make(),
                        SeeAll.text
                            .color(whiteColor)
                            .size(12)
                            .fontFamily(semibold)
                            .make(),
                      ],
                    ),
/////////////
                    10.heightBox,
///////////////
                    // SingleChildScrollView(
                    //   scrollDirection: Axis.horizontal,
                    //   child: Row(
                    //     children: List.generate(
                    //       6,
                    //       (index) => Column(
                    //         children: [
                    //           featureButton(
                    //               icon: Catagorieslistimages[index],
                    //               title: Catagorieslist[index]),
                    //           // 10.heightBox,
                    //           // featureButton(
                    //           //     icon: Catagorieslistimages[index],
                    //           //     title: Catagorieslist[index]),
                    //         ],
                    //       ),
                    //     ).toList(),
                    //   ),
                    // ),
                    /////////////
                    // 20.heightBox,
                    // //////////////// Featured Products //////
                    // Container(
                    //   padding: EdgeInsets.all(12),
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: buttoncolor,
                    //   ),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       featuredproduct.text.white
                    //           .fontFamily(bold)
                    //           .size(18)
                    //           .make(),
                    //       10.heightBox,
                    //       SingleChildScrollView(
                    //         scrollDirection: Axis.horizontal,
                    //         // child: FutureBuilder(
                    //         //     future: Firestoreservices.getfeaturedproducts(),
                    //         //     builder: (BuildContext context,
                    //         //         AsyncSnapshot<QuerySnapshot> snapshot) {
                    //         //       if (!snapshot.hasData) {
                    //         //         return Center(child: loadingIndicator());
                    //         //       } else if (snapshot.data!.docs.isEmpty) {
                    //         //         return "No Featured Service"
                    //         //             .text
                    //         //             .white
                    //         //             .makeCentered();
                    //         //       } else {
                    //         //         var featuredata = snapshot.data!.docs;
                    //         //         return Row(
                    //         //           children: List.generate(
                    //         //             featuredata.length,
                    //         //             (index) => Column(
                    //         //               crossAxisAlignment:
                    //         //                   CrossAxisAlignment.start,
                    //         //               children: [
                    //         //                 Image.network(
                    //         //                   featuredata[index]['P_imgs'][0],
                    //         //                   width: 130,
                    //         //                   height: 130,
                    //         //                   fit: BoxFit.cover,
                    //         //                 ),
                    //         //                 10.heightBox,
                    //         //                 "${featuredata[index]['p_name']}"
                    //         //                     .text
                    //         //                     .fontFamily(semibold)
                    //         //                     .color(darkFontGrey)
                    //         //                     .make(),
                    //         //                 10.heightBox,
                    //         //                 "${featuredata[index]['P_price']}"
                    //         //                     .numCurrencyWithLocale()
                    //         //                     .text
                    //         //                     .color(buttoncolor)
                    //         //                     .fontFamily(bold)
                    //         //                     .size(16)
                    //         //                     .make(),
                    //         //               ],
                    //         //             )
                    //         //                 .box
                    //         //                 .white
                    //         //                 .margin(
                    //         //                   EdgeInsets.symmetric(
                    //         //                     horizontal: 4,
                    //         //                   ),
                    //         //                 )
                    //         //                 .roundedSM
                    //         //                 .padding(EdgeInsets.all(8))
                    //         //                 .make()
                    //         //                 .onTap(() {
                    //         //               // Controller.checkifFav(
                    //         //               //     featuredata[index]);
                    //         //               Get.to(
                    //         //                 () => ItemsDetailScreen(
                    //         //                   title:
                    //         //                       "${featuredata[index]['p_name']}",
                    //         //                   data: featuredata[index],
                    //         //                 ),
                    //         //               );
                    //         //             }),
                    //         //           ),
                    //         //         );
                    //         //       }
                    //         //     }),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    //////////////////
                    // 20.heightBox,
                    // /////////// Third Swiper //////
                    // VxSwiper.builder(
                    //     aspectRatio: 16 / 9,
                    //     autoPlay: true,
                    //     height: 150,
                    //     enlargeCenterPage: true,
                    //     itemCount: SecoundSliderlist.length,
                    //     itemBuilder: (context, Index) {
                    //       return Image.asset(
                    //         SecoundSliderlist[Index],
                    //         fit: BoxFit.fill,
                    //       )
                    //           .box
                    //           .rounded
                    //           .clip(Clip.antiAlias)
                    //           .margin(
                    //             EdgeInsets.symmetric(horizontal: 8),
                    //           )
                    //           .make();
                    //     }),
                    // ///////////////
                    // 10.heightBox,
                    // Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: AllServices.text
                    //       .color(darkFontGrey)
                    //       .size(18)
                    //       .fontFamily(semibold)
                    //       .make(),
                    // ),

                    // 20.heightBox,
//////////////// All Products ////////////
                    //Divider(),
                    ///////////////////////
                    // StreamBuilder(
                    //     stream: Firestoreservices.allproducts(),
                    //     builder: (BuildContext context,
                    //         AsyncSnapshot<QuerySnapshot> snapshot) {
                    //       if (!snapshot.hasData) {
                    //         return loadingIndicator();
                    //       } else {
                    //         var productsdata = snapshot.data!.docs;
                    //         return GridView.builder(
                    //             physics: NeverScrollableScrollPhysics(),
                    //             shrinkWrap: true,
                    //             itemCount: productsdata.length,
                    //             gridDelegate:
                    //                 const SliverGridDelegateWithFixedCrossAxisCount(
                    //               crossAxisCount: 2,
                    //               mainAxisSpacing: 8,
                    //               crossAxisSpacing: 8,
                    //               mainAxisExtent: 300,
                    //             ),
                    //             itemBuilder: (context, Index) {
                    //               return Column(
                    //                 crossAxisAlignment:
                    //                     CrossAxisAlignment.start,
                    //                 children: [
                    //                   Image.network(
                    //                     productsdata[Index]['P_imgs'][0],
                    //                     height: 200,
                    //                     width: 200,
                    //                     fit: BoxFit.cover,
                    //                   ),
                    //                   Spacer(),
                    //                   //10.heightBox,
                    //                   "${productsdata[Index]['p_name']}"
                    //                       .text
                    //                       .fontFamily(semibold)
                    //                       .color(darkFontGrey)
                    //                       .make(),
                    //                   10.heightBox,
                    //                   "${productsdata[Index]['P_price']}"
                    //                       .numCurrencyWithLocale()
                    //                       .text
                    //                       .color(buttoncolor)
                    //                       .fontFamily(bold)
                    //                       .size(16)
                    //                       .make(),
                    //                 ],
                    //               )
                    //                   .box
                    //                   .white
                    //                   .margin(
                    //                     EdgeInsets.symmetric(horizontal: 4),
                    //                   )
                    //                   .roundedSM
                    //                   .padding(
                    //                     EdgeInsets.all(12),
                    //                   )
                    //                   .make()
                    //                   .onTap(() {
                    //                 Get.to(
                    //                   () => ItemsDetailScreen(
                    //                     title:
                    //                         "${productsdata[Index]['p_name']}",
                    //                     data: productsdata[Index],
                    //                   ),
                    //                 );
                    //               });
                    //             });
                    //       }
                    //     })
                    ///////////////

              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.isPhone ? 1 : 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 140,
              ),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: yellowcolor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image Section
                      Image.asset(
                        icAppLogo,
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ).box.color(darkFontGrey).roundedSM.make(),
                      const SizedBox(width: 10),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Cleanow Wash".text.fontFamily(semibold).fontWeight(FontWeight.w700).size(18)
                                .color(purpleColor)
                                .make(),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 20,
                                  color: purpleColor,
                                ),
                                "Jakarta, Indonesia"
                                    .text.color(purpleColor).size(16).fontWeight(FontWeight.w600)
                                    .make(),
                              ],
                            ),
                            const SizedBox(height: 10),
                            "Reviews (41)"
                                .text.color(buttoncolor).fontFamily(bold).size(16)
                                .make(),

                            VxRating(
                              onRatingUpdate: (value) {
                              },
                              count: 5,
                              selectionColor: Colors.amber,
                              size: 20,
                              maxRating: 5,
                              value: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).onTap(() {
                  // Get.to(() => ItemsDetailScreen(title: "Item Title"));
                });
              },
            ),
          ],
                ),
              ),
            ),

            /////////////
            // 20.heightBox,
            // GestureDetector(
            //   onTap: () async {
            //     await Get.put(AuthController()).signoutmethod(context);
            //     Get.off(() => MainView());
            //   },
            //   child: Text(
            //     "Logout",
            //     style: TextStyle(
            //       fontSize: 30,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            ///////////
          ],
        )));
  }
}
