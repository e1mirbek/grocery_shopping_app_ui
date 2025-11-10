



import 'package:grocery_shopping_app/screens/onboarding_screenVone.dart';
import 'package:grocery_shopping_app/screens/onboarding_screenVthree.dart';
import 'package:grocery_shopping_app/screens/onboarding_screenVtwo.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/theme/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {


  final PageController _pageController = PageController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Padding(
        padding: const EdgeInsets.only(left: 42, right: 39, top: 33, bottom: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 269,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, top: 33),
                child: Column(
                  children: [
                    Text("Your holiday shopping delivered", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.backgroundGray),),
                    Row(
                      children: [
                        Text("to your home",  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.backgroundGray)),
                        const SizedBox(width: 10,),
                        Image.asset("assets/icons/Emoji.png")
                      ],
                    ),
                    const SizedBox(height: 29,),
                    Text("There's something for everyone to enjoy with Sweet Shop Favourites", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.lightGray),),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 44,),
            // Индикатор
            SmoothPageIndicator (
              controller: _pageController,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: AppColors.backgroundGray,
                dotColor: Colors.white54,
                dotHeight: 6,
                dotWidth: 24,
                expansionFactor: 3,
                spacing: 8,
              ),
            ),
            Expanded(
              child: Center(
                child: PageView(
                  controller: _pageController,
                  children: [
                   OnboardingScreenvone(),
                   OnboardingScreenvtwo(),
                    OnboardingScreenvthree(),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                height: 70,
                width: 253,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.backgroundGray
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Get Started", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
