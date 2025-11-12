import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/theme/app_colors.dart';

List<Map<String, dynamic>> data = [
  {
    'titleOne': "Your holiday shopping",
    "titleTwo": "delivered to your home",
    'description':
        "There's something for everyone to enjoy with Sweet Shop Favourites",
    "image": "assets/images/image_icon.png",
    "emoji": "assets/icons/Emoji.png",

  },
  {
    'titleOne': "Groceries made easy,",
    "titleTwo": "just a tap away",
    'description':
        "Order your essentials anytime, anywhere with fast delivery.",
    "image": "assets/images/image_icon.png",
    "emoji": "assets/icons/Emoji.png",
  },
  {
    'titleOne': "Fresh products,",
    "titleTwo": "at best prices",
    'description':
        "Enjoy fresh groceries every day without leaving your home.",
    "image": "assets/images/image_icon.png",
    "emoji": "assets/icons/Emoji.png",
  },
];

class Onboarding_Screen extends StatefulWidget {
  const Onboarding_Screen({super.key});

  @override
  State<Onboarding_Screen> createState() => _Onboarding_ScreenState();
}

class _Onboarding_ScreenState extends State<Onboarding_Screen> {

  final PageController pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {


    // Define text styles
    TextStyle titleStyle = TextStyle(  fontSize: 30,
      fontWeight: FontWeight.w700,
      color: AppColors.backgroundGray,);


    TextStyle descriptionStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.lightGray,
    );



    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: data.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data[index]['titleOne'], style: titleStyle,),
                      Text(data[index]['titleTwo'], style: titleStyle,),
                      const SizedBox(height: 30,),
                      Text(data[index]['description'], style: descriptionStyle,),
                      // Image.asset(data[index]['emoji']),
                       const SizedBox(height: 44,),
                      Row(
                        children: List.generate(
                          data.length,
                          (i) => Container(
                            height: 5,
                            width: index == i ? 45 : 25,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: _currentPage == i ? Colors.white : Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 117,),
                      Center(child: Image.asset(data[index]['image'])),
                    ],
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 70,
                  width: 253,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.backgroundGray,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
