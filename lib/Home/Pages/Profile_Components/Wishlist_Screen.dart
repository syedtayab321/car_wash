import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: "My favourites"
            .text
            .fontWeight(FontWeight.w600)
            .color(whiteColor)
            .make(),
      ),
      body:
      // StreamBuilder(
      //     stream: Firestoreservices.getWishlists(),
      //     builder:
      //         (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      //       if (!snapshot.hasData) {
      //         return Center(
      //           child: loadingIndicator(),
      //         );
      //       } else if (snapshot.data!.docs.isEmpty) {
      //         return "No Items Yet!".text.color(darkFontGrey).makeCentered();
      //       } else {
      //         var data = snapshot.data!.docs;
      //         return

      Padding(
        padding: const EdgeInsets.all(16.0), // Add padding for better spacing
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Display wishlist items in a responsive grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width > 800 ? 3 : 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 5, // data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.white, // Card color
                    elevation: 4, // Shadow for elevation
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(
                            imgFc1,
                            //"${data[index]['P_imgs'][0]}",
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Product Name"
                              //"${data[index]['p_name']}"
                                  .text
                                  .white
                                  .fontWeight(FontWeight.bold)
                                  .size(16)
                                  .make(),
                              SizedBox(height: 4),
                              "\$100"
                              // "${data[index]['P_price']}"
                              //.numCurrencyWithLocale()
                                  .text
                                  .fontWeight(FontWeight.bold)
                                  .color(golden)
                                  .make(),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite, color: redColor),
                          onPressed: () async {
                            // await firestore
                            //     .collection(productscollection)
                            //     .doc(data[index].id)
                            //     .set({
                            //   'P_Wishlist':
                            //       FieldValue.arrayRemove([currentuser!.uid])
                            // }, SetOptions(merge: true));
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),

      //   }
      // } }),
    );
  }
}
