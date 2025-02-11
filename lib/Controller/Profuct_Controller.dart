
import 'package:flutter/services.dart';

import 'package:get/get.dart';

class ProductController extends GetxController {
  var colorindex = 0.obs;
  var quantity = 0.obs;
  var totalprice = 0.obs;

  var Subcat = [];
  var isFav = false.obs;
  // getSubCatagories(title) async {
  //   Subcat.clear();
  //   var data =
  //       await rootBundle.loadString("lib/Services/Catagory_details.json");
  //   var decoded = catagoryDetailsModelFromJson(data);

  //   var S =
  //       decoded.catagories.where((element) => element.name == title).toList();

  //   for (var e in S[0].subcatagory) {
  //     Subcat.add(e);
  //   }
  // }

  changecolorindex(index) {
    colorindex.value = index;
  }

  increaseQuantity(totalquantity) {
    if (quantity.value < totalquantity) {
      quantity.value++;
    }
  }

  decreaseQuantity() {
    if (quantity.value > 0) {
      quantity.value--;
    }
  }

  Calculatetotalprice(price) {
    totalprice.value = price * quantity.value;
  }

  // addtocart(
  //     {title,
  //     img,
  //     sallername,
  //     color,
  //     quantity,
  //     totalprice,
  //     context,
  //     vendoriD}) async {
  //   await firestore.collection(cartcollection).doc().set({
  //     'title': title,
  //     'vendor_id': vendoriD,
  //     'img': img,
  //     'sallername': sallername,
  //     'color': color,
  //     'quantity': quantity,
  //     'totalprice': totalprice,
  //     'added_by': currentuser!.uid,
  //   }).catchError((error) {
  //     VxToast.show(context, msg: error.toString());
  //   });
  // }

  resetvalues() {
    totalprice.value = 0;
    quantity.value = 0;
    colorindex.value = 0;
  }

  // addtowishlist(docid, context) async {
  //   await firestore.collection(productscollection).doc(docid).set({
  //     'P_Wishlist': FieldValue.arrayUnion([currentuser!.uid])
  //   }, SetOptions(merge: true));
  //   isFav(true);
  //   VxToast.show(context, msg: "Added To Wishlist");
  // }

  // removewishlist(docid, context) async {
  //   await firestore.collection(productscollection).doc(docid).set({
  //     'P_Wishlist': FieldValue.arrayRemove([currentuser!.uid])
  //   }, SetOptions(merge: true));
  //   isFav(false);
  //   VxToast.show(context, msg: "Removed From Wishlist");
  // }

  // checkifFav(data) async {
  //   if (data['P_Wishlist'].contains(currentuser!.uid)) {
  //     isFav(true);
  //   } else {
  //     isFav(false);
  //   }
  // }
}
