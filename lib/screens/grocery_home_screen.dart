




import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/theme/app_colors.dart';

class GroceryHomeScreen extends StatelessWidget {
  const GroceryHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 250,
        backgroundColor: AppColors.primaryBlue,
        title: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hey, Halal", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: AppColors.backgroundGray),),
                  Image.asset("assets/icons/Cart Icon.png")
                ],
              ),
              const SizedBox(height: 35,),
              Container(
                height: 56,
                width: 335,
                decoration: BoxDecoration(
                  color: Color(0xFF153075),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/Search Icon.png", color: Colors.white, width: 15, height: 15,),
                      const SizedBox(width: 12,),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search Products or store",
                            hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF8891A5),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child:
        Text("Grocery Home Page"),
      )),
    );
  }
}
