import 'package:fusionxcar/consts/firebase_const.dart';

class Firestoreservices {
  static getuser(uid) {
    ///   Get user data //////
    return firestore
        .collection(userCollection)
        .where('id', isEqualTo: uid)
        .snapshots();
  }

  ///////// Get Products According to catagory ////
  static getproducts(catagory) {
    return firestore
        .collection(productscollection)
        .where('P_catagory', isEqualTo: catagory)
        .snapshots();
  }

  ///////////////get sub catagory products/////////////////
  static getSubCatagoryProducts(title) {
    return firestore
        .collection(productscollection)
        .where('P_subCatagory', isEqualTo: title)
        .snapshots();
  }

  //////////// Get Cart ////////
  static GetCart(uid) {
    return firestore
        .collection(cartcollection)
        .where('added_by', isEqualTo: uid)
        .snapshots();
  }

  ////////////////// delete delect dacument///////
  static deletedacument(docid) {
    return firestore.collection(cartcollection).doc(docid).delete();
  }

  ///////////////////Get Chat Messages///////////
  static getChatMessages(docid) {
    return firestore
        .collection(Chatscollection)
        .doc(docid)
        .collection(Messagingcollection)
        .orderBy('created_on', descending: false)
        .snapshots();
  }

  static getAllorders() {
    return firestore
        .collection(orderscollection)
        .where('order_by', isEqualTo: currentuser!.uid)
        .snapshots();
  }

  static getWishlists() {
    return firestore
        .collection(productscollection)
        .where('P_Wishlist', arrayContains: currentuser!.uid)
        .snapshots();
  }

  static getAllMessages() {
    return firestore
        .collection(Chatscollection)
        .where('fromid', isEqualTo: currentuser!.uid)
        .snapshots();
  }

  static getCounts() async {
    var res = await Future.wait([
      firestore
          .collection(cartcollection)
          .where('added_by', isEqualTo: currentuser!.uid)
          .get()
          .then((value) {
        return value.docs.length;
      }),
      firestore
          .collection(productscollection)
          .where('P_Wishlist', arrayContains: currentuser!.uid)
          .get()
          .then((value) {
        return value.docs.length;
      }),
      firestore
          .collection(orderscollection)
          .where('order_by', isEqualTo: currentuser!.uid)
          .get()
          .then((value) {
        return value.docs.length;
      }),
    ]);
    return res;
  }

  static allproducts() {
    return firestore.collection(productscollection).snapshots();
  }

  //////////////get featured product method
  static getfeaturedproducts() {
    return firestore
        .collection(productscollection)
        .where('is_featured', isEqualTo: true)
        .get();
  }

  static searchproducts(title) {
    return firestore.collection(productscollection).get();
  }
}
