import 'package:fusionxcar/common_widgets/BG_Widgets.dart';
import 'package:fusionxcar/consts/List.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Components/Catagory_Detail_Screen.dart';

class CatagoryScreen extends StatelessWidget {
  const CatagoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        backgroundColor: purpleColor,
        appBar: AppBar(
          backgroundColor: purpleColor,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: const Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = constraints.maxWidth > 800 ? 4 : 3;
              double aspectRatio = constraints.maxWidth > 800 ? 1.2 : 1.0;

              return GridView.builder(
                shrinkWrap: true,
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: aspectRatio,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(
                        Catagorieslistimages[index],
                        height: 120,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        Catagorieslist[index],
                        style: const TextStyle(color: darkFontGrey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                      .box
                      .white
                      .rounded
                      .clip(Clip.antiAlias)
                      .outerShadowSm
                      .make()
                      .onTap(() {
                    // Controller.getSubCatagories(Catagorieslist[index]);

                    Get.to(() => CatagoryDetailScreen(
                      title: Catagorieslist[index],
                    ));
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
