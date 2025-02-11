import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fusionxcar/Auth/Login_Screen.dart';
import 'package:fusionxcar/Controller/Auth_Controller.dart';
import 'package:fusionxcar/Controller/Profile_Controller.dart';
import 'package:fusionxcar/Services/Firestore_Services.dart';
import 'package:fusionxcar/common_widgets/BG_Widgets.dart';
import 'package:fusionxcar/common_widgets/Detail_Card.dart';
import 'package:fusionxcar/consts/List.dart';
import 'package:fusionxcar/consts/colors.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Profile_Components/Edit_Profile_Screen.dart';
import 'Profile_Components/Messages/Message_screen.dart';
import 'Profile_Components/Order_Screen.dart';
import 'Profile_Components/Wishlist_Screen.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = Get.put(ProfileController());

//     return Scaffold(
//       backgroundColor: purpleColor,
//       body: Padding(
//         padding: const EdgeInsets.only(top: 30),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             15.heightBox,
//             //////////////////Edit Profile Icon//////////////
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: Icon(
//                   Icons.edit,
//                   color: whiteColor,
//                 ).onTap(() {
//                   // controller.namecontroller.text = data['name'];
//                   // //controller.passwordcontroller.text = data['password'];
//                   Get.to(() => EditProfileSceen(
//                       // data: data,
//                       ));
//                 }),
//               ),
//             ),

//             /////////////// USer details Section //////////
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12.0),
//               child: Row(
//                 children: [
//                   imgFc1 == ''
//                       ? Image.asset(
//                           imgFc1,
//                           width: 70,
//                           fit: BoxFit.cover,
//                         )
//                           .box
//                           .roundedFull
//                           .clip(
//                             Clip.antiAlias,
//                           )
//                           .make()
//                       : Image.asset(
//                           imgFc1,
//                           width: 70,
//                           fit: BoxFit.cover,
//                         )
//                           .box
//                           .roundedFull
//                           .clip(
//                             Clip.antiAlias,
//                           )
//                           .make(),
//                   10.widthBox,
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         "ABX DEV".text.white.fontWeight(FontWeight.w600).make(),
//                         5.heightBox,
//                         "abxdev@gmail.com".text.white.make(),
//                       ],
//                     ),
//                   ),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                         side: BorderSide(
//                       color: whiteColor,
//                     )),
//                     onPressed: () async {
//                       // await Get.put(AuthController())
//                       //     .signoutmethod(context);
//                       // Get.off(() => MainView());
//                     },
//                     child: logout.text.white.fontWeight(FontWeight.w500).make(),
//                   ),
//                 ],
//               ),
//             ),
//             15.heightBox,
//             /////////////////////////

//             // FutureBuilder(
//             //     future: Firestoreservices.getCounts(),
//             //     builder:
//             //         (BuildContext context, AsyncSnapshot snapshot) {
//             //       if (!snapshot.hasData) {
//             //         return Center(child: loadingIndicator());
//             //       } else {
//             //         var countdata = snapshot.data;
//             //         return Row(
//             //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //           children: [
//             //             detailcard(
//             //               count: countdata[0].toString(),
//             //               title: "in your cart",
//             //               width: context.screenWidth / 3.2,
//             //             ),
//             //             detailcard(
//             //               count: countdata[1].toString(),
//             //               title: "in your wishlist",
//             //               width: context.screenWidth / 3.2,
//             //             ),
//             //             detailcard(
//             //               count: countdata[2].toString(),
//             //               title: "your orders",
//             //               width: context.screenWidth / 3.2,
//             //             ),
//             //           ],
//             //         );
//             //       }
//             //     }),

//             //////////////////////////
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 detailcard(
//                   count: "00",
//                   title: "Cart",
//                   width: context.screenWidth / 3.2,
//                 ),
//                 detailcard(
//                   count: "00",
//                   title: "favourites ",
//                   width: context.screenWidth / 3.2,
//                 ),
//                 detailcard(
//                   count: "00",
//                   title: "Orders",
//                   width: context.screenWidth / 3.2,
//                 ),
//               ],
//             ),
//             //bgWidget(child: Container()),
//             ///////profile button section/////////

//             8.heightBox,
//             // Divider(),
//             ListView.separated(
//                     shrinkWrap: true,
//                     itemBuilder: (BuildContext, index) {
//                       return ListTile(
//                         onTap: () {
//                           switch (index) {
//                             case 0:
//                               Get.to(() => WishlistScreen());
//                               break;
//                             case 1:
//                               Get.to(() => OrderScreen());
//                               break;
//                             case 2:
//                               Get.to(() => MessagesScreen());
//                               break;

//                             default:
//                           }
//                         },
//                         leading: Image.asset(
//                           profilebuttonicons[index],
//                           width: 22,
//                         ),
//                         title: "${profilebuttonlist[index]}"
//                             .text
//                             .color(darkFontGrey)
//                             .fontWeight(FontWeight.w500)
//                             .make(),
//                       );
//                     },
//                     separatorBuilder: ((context, index) {
//                       return Divider(
//                         color: lightGrey,
//                       );
//                     }),
//                     itemCount: profilebuttonlist.length)
//                 .box
//                 .white
//                 .rounded
//                 .margin(
//                   EdgeInsets.all(12),
//                 )
//                 .padding(EdgeInsets.symmetric(horizontal: 16))
//                 .shadowSm
//                 .make()
//                 .box
//                 .color(
//                   purpleColor,
//                 )
//                 .make(),

//             ///////////
//           ],
//         ),
//       ),
//     );
//   }
// }

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());

    return Scaffold(
      backgroundColor: purpleColor,
      body: StreamBuilder(
        stream: Firestoreservices.getuser(currentuser!.uid),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(whiteColor),
              ),
            );
          } else {
            var data = snapshot.data!.docs.isNotEmpty ? snapshot.data!.docs[0] : null;
            if (data == null) {
              return const Center(child: Text("No user data found."));
            }

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: const Icon(Icons.edit, color: whiteColor).onTap(() {
                        //controller.namecontroller.text = data['name'];
                        //controller.passwordcontroller.text = data['password'];
                        Get.to(() => const EditProfileSceen());
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        data['imgurl'] == ''
                            ? Image.asset(
                          imgFc1,
                          width: 70,
                          fit: BoxFit.cover,
                        ).box.roundedFull.clip(Clip.antiAlias).make()
                            : Image.network(
                          data['imgurl'],
                          width: 70,
                          fit: BoxFit.cover,
                        ).box.roundedFull.clip(Clip.antiAlias).make(),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "${data['name']}".text.white.fontWeight(FontWeight.w600).make(),
                              const SizedBox(height: 5),
                              "${data['email']}".text.white.make(),
                            ],
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: whiteColor),
                          ),
                          onPressed: () async {
                            await Get.put(AuthController()).signoutmethod(context);
                            Get.off(() => const LoginScreen());
                          },
                          child: logout.text.white.fontWeight(FontWeight.w500).make(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  FutureBuilder(
                    future: Firestoreservices.getCounts(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                          child: CircularProgressIndicator(color: whiteColor),
                        );
                      } else {
                        var countdata = snapshot.data;
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            detailcard(count: countdata[0].toString(), title: "in your cart", width: context.screenWidth / 3.2),
                            detailcard(count: countdata[1].toString(), title: "in your wishlist", width: context.screenWidth / 3.2),
                            detailcard(count: countdata[2].toString(), title: "your orders", width: context.screenWidth / 3.2),
                          ],
                        );
                      }
                    },
                  ),

                  const SizedBox(height: 8),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                      return ListTile(
                        onTap: () {
                          switch (index) {
                            case 0:
                              Get.to(() => const WishlistScreen());
                              break;
                            case 1:
                              Get.to(() => const OrderScreen());
                              break;
                            case 2:
                              Get.to(() => const MessagesScreen());
                              break;
                            default:
                          }
                        },
                        leading: Image.asset(
                          profilebuttonicons[index],
                          width: 22,
                        ),
                        title: profilebuttonlist[index].text.color(darkFontGrey).fontWeight(FontWeight.w500).make(),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(color: lightGrey);
                    },
                    itemCount: profilebuttonlist.length,
                  ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(purpleColor.withOpacity(0.9)).make(),

                  const SizedBox(height: 20), // Add extra spacing
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

