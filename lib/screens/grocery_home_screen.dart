
import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/theme/app_colors.dart';
import 'package:grocery_shopping_app/widgets/balance_card.dart';



class GroceryHomeScreen extends StatelessWidget {
  const GroceryHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFF8F9FB),
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
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 BalanceCard(balance: 346, currencies: "USD", description: "Your total savings", color: Color(0xFFFFC83A)),
                 BalanceCard(balance: 215, currencies: "HRS", description: "Your time saved", color: Color(0xffE4DDCB)),
               ],
             ),
                SizedBox(height: 30,),
              Text("Deals on Fruits & Tea", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),),
              const SizedBox(height: 22,),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2, // 2 карточки в ряд
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                // childAspectRatio: 167 / 194, // пропорции твоей карточки
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // если внутри ScrollView
            itemCount: 10,
              itemBuilder: (context, index) {
              return    Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  width: 167,
                  height: 194,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FB),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 12,
                        offset: Offset(0, 5),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Иконка
                      Image.asset(
                        "assets/images/image_icon.png",
                        width: 68,
                        height: 68,
                        color: Colors.grey,
                      ),

                      // Плюс — справа
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: const BoxDecoration(
                            color: Color(0xFF2A4BA0),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.add, color: Colors.white, size: 16),
                        ),
                      ),
                      // Цена
                      Align(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "\$325",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),

                      // Описание
                      const Text(
                        "Orange Package 1 | 1 bundle",
                        style: TextStyle(
                          color: Color(0xFF616A7D),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              );
          }),
          ],
          ),
        ),
      )),
    );
  }
}



