



import 'package:flutter/material.dart';

class PromoCardWidget extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String percent;
  const PromoCardWidget({super.key, required this.color, required this.percent, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: 269,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/Image_white.png", width: 56, height: 56, color: Color(0xFFFFFFFF),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Get", style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w300),),
                    Text(percent, style: TextStyle(color: textColor, fontSize: 26, fontWeight: FontWeight.w800),),
                    Text("On fist 03 order", style: TextStyle(color: textColor, fontSize: 13, fontWeight: FontWeight.w300),),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}






