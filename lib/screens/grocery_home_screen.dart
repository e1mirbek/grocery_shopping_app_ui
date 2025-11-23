

// Ссылка для курс IT Space : https://meet.google.com/ppj-uyin-dxj


import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/screens/pages/categories_page.dart';
import 'package:grocery_shopping_app/screens/pages/favourites_page.dart';
import 'package:grocery_shopping_app/screens/pages/home_content_page.dart';
import 'package:grocery_shopping_app/screens/pages/mores_page.dart';
import 'package:grocery_shopping_app/widgets/appbar/home_app_bar.dart';
import 'package:grocery_shopping_app/widgets/bottom_nav_bar.dart';




List <Widget> pages = [
  const HomeContentPage(),
  const CategoriesPage(),
  const FavouritesPage(),
  const MoresPage(),
];




class GroceryHomeScreen extends StatefulWidget {
  const GroceryHomeScreen({super.key});

  @override
  State<GroceryHomeScreen> createState() => _GroceryHomeScreenState();
}

class _GroceryHomeScreenState extends State<GroceryHomeScreen> {

   int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -----------------------------
      // APP BAR
      // -----------------------------
      appBar: activeIndex == 0 ? HomeAppBar() : null,
      // -----------------------------
      // GROCERY HOME
      // -----------------------------
      body: pages[activeIndex],
      // -----------------------------
      //       BOTTOM NAV BAR
      // -----------------------------
      bottomNavigationBar: BottomNavBar(
         activeIndex: activeIndex,
          onTabSelected: (index) {
        setState(() {
          activeIndex = index;
        });
      }),
    );
  }
}










