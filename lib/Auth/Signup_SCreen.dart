import 'package:fusionxcar/Auth/Login_Screen.dart';
import 'package:fusionxcar/Controller/Auth_Controller.dart';
import 'package:fusionxcar/Home/Home_Screen.dart';
import 'package:fusionxcar/common_widgets/App_Logo_widget.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:fusionxcar/consts/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({
    super.key,
  });
  // final PageController controller;
  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _ConfirmpasswordController =
      TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _countrycodeController = TextEditingController();
  final TextEditingController _mobilenumberController = TextEditingController();
  final TextEditingController _ReferralCodeFieldController =
      TextEditingController();
  String email = "";
  String password = "";
  bool ischeck = false;
  var controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Center(
                child: SizedBox(
                  height: 77,
                  width: 77,
                  child: ApplogoWidgets(),
                  //  Image.asset(
                  //   'assets/vector-2.png',
                  //   width: 428,
                  //   height: 300,
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 18,
            // ),
            Center(
              child: Container(
                width: Get.width*1/2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Obx(
                    () => Column(
                      textDirection: TextDirection.ltr,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        5.heightBox,
                        const Center(
                          child: Text(
                            'Please Register Your Account Thanks!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 56,
                          child: TextField(
                            controller: _usernameController,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Full Name',
                              labelStyle: TextStyle(
                                color: halfwhite,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: whiteColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // UsernameField(
                        //     //controller: _usernameController,
                        //     ),
                        const SizedBox(
                          height: 17,
                        ),
                        SizedBox(
                          height: 56,
                          child: TextField(
                            // validator: (val) {
                            //   return RegExp(
                            //               r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            //           .hasMatch(val!)
                            //       ? null
                            //       : "Please enter a valid email";
                            // },
                            // onChanged: (val) {
                            //   setState(() {
                            //     email = val;
                            //   });
                            // },
                            controller: _emailController,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: whiteColor,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: const InputDecoration(
                              errorStyle: TextStyle(
                                color: Colors.red,
                              ),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: halfwhite,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: whiteColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        ////////////////////
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 56,
                              height: 56,
                              child: TextField(
                                controller: _countrycodeController,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: whiteColor,
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: const InputDecoration(
                                  labelText: '+91',
                                  hintText: '+91',
                                  hintStyle: TextStyle(
                                    color: halfwhite,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  labelStyle: TextStyle(
                                    color: halfwhite,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: whiteColor,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 230,
                              height: 56,
                              child: TextField(
                                controller: _mobilenumberController,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: whiteColor,
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: const InputDecoration(
                                  labelText: 'Enter Your Mobile',
                                  hintText: 'Enter Your Mobile',
                                  hintStyle: TextStyle(
                                    color: halfwhite,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  labelStyle: TextStyle(
                                    color: halfwhite,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: whiteColor,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // PhoneNumber(
                        //     // contrycodecontroller: _countrycodeController,
                        //     // phonecontrolleer: _mobilenumberController,
                        //     ),
                        const SizedBox(
                          height: 17,
                        ),
                        ///////////////////////
                        SizedBox(
                            height: 56,
                            child: TextField(
                              // validator: (val) {
                              //   if (val!.length < 6) {
                              //     return "Password must be at least 6 characters";
                              //   } else {
                              //     return null;
                              //   }
                              // },
                              // onChanged: (val) {
                              //   setState(() {
                              //     password = val;
                              //   });
                              // },
                              obscureText: true,
                              controller: _passwordController,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: whiteColor,
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: const InputDecoration(
                                errorStyle: TextStyle(
                                  color: Colors.red,
                                ),
                                labelText: 'Password',
                                hintText: 'Create Password',
                                hintStyle: TextStyle(
                                  color: halfwhite,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                                labelStyle: TextStyle(
                                  color: halfwhite,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: whiteColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            )),

                        // PasswordField(
                        //   ispass: true,
                        //   controller: _passwordController,
                        // ),
                        const SizedBox(
                          height: 17,
                        ),
                        //ConfirmPasswordField(),
                        SizedBox(
                          height: 56,
                          child: TextField(
                            obscureText: true,
                            controller: _ConfirmpasswordController,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: whiteColor,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Confirm Password',
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(
                                color: halfwhite,
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                              labelStyle: TextStyle(
                                color: halfwhite,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: whiteColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ////////////
                        const SizedBox(
                          height: 17,
                        ),
                        // ReferralCodeField(
                        //     //ReferralController: _ReferralCodeFieldController,
                        //     ),

                        SizedBox(
                            height: 56,
                            child: TextField(
                              controller: _ReferralCodeFieldController,
                              //controller: ReferralController,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: whiteColor,
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: const InputDecoration(
                                labelText: 'Referral Code',
                                hintText: 'Referral Code',
                                hintStyle: TextStyle(
                                  color: halfwhite,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                                labelStyle: TextStyle(
                                  color: halfwhite,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: whiteColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            )),
                        const SizedBox(
                          height: 25,
                        ),

                        Row(
                          children: [
                            Checkbox(
                                activeColor: whiteColor,
                                checkColor: purpleColor,
                                value: ischeck,
                                onChanged: (newvalue) {
                                  setState(() {
                                    ischeck = newvalue!;
                                  });
                                }),
                            10.widthBox,
                            Expanded(
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "I agree to the",
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: halfwhite,
                                      ),
                                    ),
                                    TextSpan(
                                      text: termsandcondition,
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: whiteColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " & ",
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: halfwhite,
                                      ),
                                    ),
                                    TextSpan(
                                      text: privacypolicy,
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        5.heightBox,
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          child: SizedBox(
                            width: 329,
                            height: 56,
                            child: controller.isloading.value
                                ? const CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation(buttoncolor),
                                  )
                                : ElevatedButton(
                                    onPressed: () async {
                                      if (ischeck != false) {
                                        controller.isloading(true);
                                        try {
                                          await controller.Signupmethod(
                                            context: context,
                                            email: _emailController.text,
                                            password: _passwordController.text,
                                          ).then((value) {
                                            return controller.storeUserData(
                                              email: _emailController.text,
                                              password: _passwordController.text,
                                              confirmpassword:
                                                  _ConfirmpasswordController.text,
                                              name: _usernameController.text,
                                              // referralcode: ReferralCodeField(),
                                              countrycode:
                                                  _countrycodeController.text,
                                              phone: _mobilenumberController.text,
                                              referralcode:
                                                  _ReferralCodeFieldController.text,
                                            );
                                          }).then((value) {
                                            VxToast.show(context, msg: LoggedIn);
                                            Get.offAll(
                                              () => const HomeScreen(),
                                            );
                                          });
                                        } catch (e) {
                                          auth.signOut();
                                          VxToast.show(
                                            context,
                                            msg: e.toString(),
                                          );
                                          controller.isloading(false);
                                        }
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      //backgroundColor: const Color(0xFF9F7BFF),
                                      backgroundColor:
                                          ischeck ? whiteColor : purpleColor,
                                    ),
                                    child: const Text(
                                      'Create account',
                                      style: TextStyle(
                                        color: purpleColor,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: halfwhite,
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 2.5,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => const LoginScreen());
                                // widget.controller.animateToPage(0,
                                //     duration: const Duration(milliseconds: 500),
                                //     curve: Curves.ease);
                              },
                              child: const Text(
                                'Log In ',
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        30.heightBox,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
