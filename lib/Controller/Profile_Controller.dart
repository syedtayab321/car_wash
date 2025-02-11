import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class ProfileController extends GetxController {
  var profileimagepath = ''.obs;
  var profileimagelink = '';
  var isloading = false.obs;

  var namecontroller = TextEditingController();
  var oldpasswordcontroller = TextEditingController();
  var newpasswordcontroller = TextEditingController();

  changeimage(context) async {
    try {
      final img = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (img == null) return;
      profileimagepath.value = img.path;
    } on PlatformException catch (e) {
      VxToast.show(
        context,
        msg: e.toString(),
      );
    }
  }

  uploadprofileimage() async {
    var filename = basename(profileimagepath.value);
    var destination = 'images/${currentuser!.uid}/$filename';
    Reference ref = FirebaseStorage.instance.ref().child(destination);
    await ref.putFile(File(profileimagepath.value));
    profileimagelink = await ref.getDownloadURL();
  }

  updateprofile({name, password, imgurl}) async {
    var Store = firestore.collection(userCollection).doc(currentuser!.uid);
    await Store.set({
      'name': name,
      'password': password,
      'imgurl': imgurl,
    }, SetOptions(merge: true));
    isloading(false);
  }

  changeAuthPassword({email, password, newpassword}) async {
    final cred = EmailAuthProvider.credential(email: email, password: password);

    await currentuser!.reauthenticateWithCredential(cred).then((value) {
      currentuser!.updatePassword(newpassword);
    }).catchError((error) {
      print(error.toString());
    });
  }
}
