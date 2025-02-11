import 'package:fusionxcar/common_widgets/BG_Widgets.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

class EditProfileSceen extends StatelessWidget {
  // final dynamic data;

  const EditProfileSceen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var controller = Get.find<ProfileController>();

    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: whiteColor),
          backgroundColor: purpleColor,
          title: "EDIT PROFILE".text.fontWeight(FontWeight.bold).white.make(),
        ),
        backgroundColor: purpleColor,
        body:
            // Obx(
            //   () =>
            Column(
          children: [
            //if data image and controller path is empty
            // data['imgurl'] == ' ' && controller.profileimagepath.isEmpty
            //     ?
            Image.asset(
              imgFc1,
              width: 100,
              fit: BoxFit.cover,
            )
                .box
                .size(100, 100)
                .color(purpleColor)
                .roundedFull
                .clip(
                  Clip.antiAlias,
                )
                .make(),
            //if data is not empty but controller part is empty
            // : data['imgurl'] != '' && controller.profileimagepath.isEmpty
            //     ? Image.network(
            //         data['imgurl'],
            //         width: 100,
            //         fit: BoxFit.cover,
            //       )
            //         .box
            //         .roundedFull
            //         .clip(
            //           Clip.antiAlias,
            //         )
            //         .make()
            // //if both are empty
            // : Image.file(
            //     File(controller.profileimagepath.value),
            //     width: 100,
            //     fit: BoxFit.cover,
            //   )
            //     .box
            //     .roundedFull
            //     .clip(
            //       Clip.antiAlias,
            //     )
            //     .make(),
            10.heightBox,
            /////////////////

            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: SizedBox(
                //width: double.infinity,
                height: 45,
                width: 100,
                child: ElevatedButton(
                  onPressed: () async {
                    // controller.changeimage(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      )),
                  child: const Text(
                    'Change',
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
            //////////////
            const Divider(),
            /////////////

            20.heightBox,
            /////////
            /////////// namefield //////////
            const SizedBox(
              height: 56,
              child: TextField(
                // controller: controller.namecontroller,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 13,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.white70,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
            10.heightBox,
            //////////////////// password field ////////

            const SizedBox(
                height: 56,
                child: TextField(
                  // validator: (val) {
                  //   if (val!.length < 6) {
                  //     return "Password must be at least 6 characters";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  obscureText: true,
                  // controller: controller.oldpasswordcontroller,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter Your Old Password',
                    hintStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFF837E93),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                )),
//////////////////new password////////////
            10.heightBox,
            ////////////
            const SizedBox(
                height: 56,
                child: TextField(
                  // validator: (val) {
                  //   if (val!.length < 6) {
                  //     return "Password must be at least 6 characters";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  obscureText: true,
                  //controller: controller.newpasswordcontroller,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    labelText: 'New Password',
                    hintText: 'Create New  Password',
                    hintStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                )),

            /////////////
            20.heightBox,

            //////////////////////
            // controller.isloading.value
            //     ? const CircularProgressIndicator(
            //         valueColor: AlwaysStoppedAnimation(buttoncolor),
            //       )
            //     :
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () async {
//                             controller.isloading(true);

//                             ///if profile image is not selected///
//                             if (controller.profileimagepath.value.isNotEmpty) {
//                               await controller.uploadprofileimage();
//                             } else {
//                               controller.profileimagelink = data['imgurl'];
//                             }
// //////////if data password match data base
//                             if (data['password'] ==
//                                 controller.oldpasswordcontroller.text) {
//                               await controller.changeAuthPassword(
//                                 email: data['email'],
//                                 password: controller.oldpasswordcontroller.text,
//                                 newpassword:
//                                     controller.newpasswordcontroller.text,
//                               );
//                               await controller.updateprofile(
//                                 imgurl: controller.profileimagelink,
//                                 name: controller.namecontroller.text,
//                                 password: controller.newpasswordcontroller.text,
//                               );
//                               VxToast.show(context, msg: "Updated");
//                             } else {
//                               VxToast.show(context, msg: 'Wrong old password');
//                               controller.isloading(false);
//                             }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      )),
                  child: const Text(
                    'Save',
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

            ////////////
          ],
        )
                .box
                .shadowSm
                .color(purpleColor)
                .rounded
                .padding(const EdgeInsets.all(16))
                .margin(
                  const EdgeInsets.only(
                    top: 50,
                    left: 12,
                    right: 12,
                    bottom: 50,
                  ),
                )
                .make(),
        // ),
      ),
    );
  }
}
