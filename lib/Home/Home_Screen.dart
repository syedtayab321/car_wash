import 'package:fusionxcar/Controller/Home_Controller.dart';
import 'package:fusionxcar/Home/Pages/CartScreen.dart';
import 'package:fusionxcar/Home/Pages/CatagoryScreen.dart';
import 'package:fusionxcar/Home/Pages/HomePage.dart';
import 'package:fusionxcar/Home/Pages/ProfileScreen.dart';
import 'package:fusionxcar/common_widgets/Exite_Dialoge.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:fusionxcar/consts/images.dart';
import 'package:fusionxcar/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navbarItems = [
      BottomNavigationBarItem(
        icon: Image.asset(icHome, width: 26),
        label: home,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icCategories, width: 26),
        label: catagory,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icCart, width: 26),
        label: cart,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icProfile, width: 26),
        label: Account,
      ),
    ];

    var navBodies = [
      const Homepage(),
      const CatagoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];

    return WillPopScope(
      onWillPop: () async {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => ExitDialog(context));
        return false;
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;

          return Scaffold(
            body: Row(
              children: [
                if (!isMobile)
                  NavigationRail(
                    selectedIndex: controller.currentNavIndex.value,
                    onDestinationSelected: (index) {
                      controller.currentNavIndex.value = index;
                    },
                    backgroundColor: purpleColor,
                    unselectedIconTheme: const IconThemeData(color: Colors.white70),
                    selectedIconTheme: const IconThemeData(color: Colors.white),
                    labelType: NavigationRailLabelType.all,
                    destinations: navbarItems
                        .map((item) => NavigationRailDestination(icon: item.icon,
                        label: Text(item.label!),
                      ),
                    ).toList(),
                  ),
                Expanded(child: Obx(() => navBodies[controller.currentNavIndex.value],),
                ),
              ],
            ),
            bottomNavigationBar: isMobile
                ? Obx(() => BottomNavigationBar(
                currentIndex: controller.currentNavIndex.value,
                selectedItemColor: whiteColor,
                selectedLabelStyle: const TextStyle(
                  fontFamily: semibold,
                  color: whiteColor,
                ),
                type: BottomNavigationBarType.fixed,
                backgroundColor: purpleColor,
                items: navbarItems,
                onTap: (newValue) {
                  controller.currentNavIndex.value = newValue;
                },
              ),
            )
                : null,
          );
        },
      ),
    );
  }
}
