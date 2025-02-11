import 'package:flutter/material.dart';
// import 'package:flutter_ui/consts/contant.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
   // getusername();
    super.onInit();
  }

  var currentNavIndex = 0.obs;
  var username = '';

  var SearchController = TextEditingController();

  // getusername() async {
  //   var n = await firestore
  //       .collection(userCollection)
  //       .where('id', isEqualTo: currentuser!.uid)
  //       .get()
  //       .then((value) {
  //     if (value.docs.isNotEmpty) {
  //       return value.docs.single['name'];
  //     }
  //   });
  //   username = n;
  // }
}
