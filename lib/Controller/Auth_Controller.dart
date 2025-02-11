import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isloading = false.obs;
//////////textcontrollers
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  ///login method
  Future<UserCredential?> loginmethod({
    context,
  }) async {
    UserCredential? userCredential;
    try {
      //await
      userCredential = await auth.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
    } on FirebaseAuthException catch (e) {
      VxToast.show(
        context,
        msg: e.toString(),
      );
    }
    return userCredential;
  }

  /////////////signup method
  Future<UserCredential?> Signupmethod({
    email,
    password,
    context,
  }) async {
    UserCredential? userCredential;
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(
        context,
        msg: e.toString(),
      );
    }
    return userCredential;
  }

  /////////////storing data method
  storeUserData({
    name,
    password,
    confirmpassword,
    email,
    countrycode,
    phone,
    referralcode,
    //imagurl,
  }) async {
    DocumentReference Store =
        await firestore.collection(userCollection).doc(currentuser!.uid);
    Store.set({
      'name': name,
      'password': password,
      'confirmpassword': confirmpassword,
      'email': email,
      'countrycode': countrycode,
      'phonenumber': phone,
      'Referralcode': referralcode,
      'id': currentuser!.uid,
      'imgurl': '',
      'cart_Count': "00",
      'Wishlist_Count': "00",
      'Orders_Count': "00",
    });
  }

  ///////////////////
  //signoutmethod
  signoutmethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(
        context,
        msg: e.toString(),
      );
    }
  }

  ///////
}
