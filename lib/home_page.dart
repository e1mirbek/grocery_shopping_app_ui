

import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/screens/onboarding_screen.dart';
import 'package:grocery_shopping_app/theme/app_colors.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Groceries',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundGray,
        primaryColor: AppColors.primaryBlue,
        textTheme:  TextTheme(
          bodyMedium: TextStyle(color: AppColors.gray),
        )
      ),
      home: Onboarding_Screen(),
    );
  }
}
