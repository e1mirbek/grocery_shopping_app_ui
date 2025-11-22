




import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 250,
      backgroundColor: AppColors.primaryBlue,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hey, Halal",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.backgroundGray,
                  ),
                ),
                Image.asset("assets/icons/Cart Icon.png"),
              ],
            ),
            const SizedBox(height: 35),
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
                    Image.asset(
                      "assets/icons/Search Icon.png",
                      color: Colors.white,
                      width: 15,
                      height: 15,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                            color: Colors.white
                        ),
                        decoration: InputDecoration(
                          hintText: "Search Products or store",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8891A5),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery to".toUpperCase(), style: TextStyle(fontSize: 11, fontWeight: FontWeight.w800, color: Colors.grey[300]),),
                Text("Within".toUpperCase(), style: TextStyle(fontSize: 11, fontWeight: FontWeight.w800, color: Colors.grey[300])),
              ],),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Green Way 3000, Sylhet", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),
                Text("1 Hour",  style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(252);
}
