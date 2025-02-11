import 'package:fusionxcar/Home/Pages/Components/Item_details_screen.dart';
import 'package:fusionxcar/Home/Pages/Components/cat_class.dart';
import 'package:fusionxcar/common_widgets/BG_Widgets.dart';
import 'package:fusionxcar/consts/colors.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatagoryDetailScreen extends StatefulWidget {
  final String? title;
  const CatagoryDetailScreen({super.key, required this.title});

  @override
  State<CatagoryDetailScreen> createState() => _CatagoryDetailScreenState();
}

class _CatagoryDetailScreenState extends State<CatagoryDetailScreen> {
  var subcat = [
    'Car Cleaning',
    'Car Washing',
    'Car Polishing',
    'Other Services'
  ];

  // List to hold the products to display for each category
  List<Category> displayedProducts = [];

  @override
  void initState() {
    super.initState();
    // Show products for the first category by default
    switchSubcategory(subcat[0]);
  }

  // Switch subcategory based on selected category
  void switchSubcategory(String category) {
    if (category == 'Car Cleaning') {
      displayedProducts = carCleaningProducts;
    } else if (category == 'Car Washing') {
      displayedProducts = carWashingProducts;
    } else if (category == 'Car Polishing') {
      displayedProducts = carPolishingProducts;
    }
    // Add more conditions for other categories
    setState(() {}); // Refresh UI after updating the list
  }

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        backgroundColor: purpleColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: whiteColor),
          backgroundColor: purpleColor,
          title: widget.title!.text.fontWeight(FontWeight.bold).white.make(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Horizontal category selector
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(subcat.length, (index) {
                  return "${subcat[index]}"
                      .text
                      .size(12)
                      .fontWeight(FontWeight.bold)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .white
                      .size(120, 60)
                      .rounded
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .make()
                      .onTap(() {
                    switchSubcategory(subcat[index]);
                  });
                }),
              ),
            ),
            20.heightBox,

            // Display the products for the selected category
            Expanded(
              child: ListView.builder(
                itemCount: displayedProducts.length,
                itemBuilder: (context, index) {
                  final product = displayedProducts[index];
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => ItemsDetailScreen(
                            data: product.description,
                            title: product.name,
                          ));
                    },
                    child: Card(
                      margin: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Image.asset(
                              product.image,
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(product.description),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        product.price,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.green,
                                        ),
                                      ),
                                      VxRating(
                                        onRatingUpdate: (value) {
                                          // Empty callback to make the rating non-interactive
                                        },
                                        count: 5, // Number of stars
                                        selectionColor: Colors.amber,
                                        size: 24, // Size of each star
                                        maxRating: 5, // Maximum rating
                                        value:
                                            4, // Fixed rating (replace with your desired fixed value)
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
