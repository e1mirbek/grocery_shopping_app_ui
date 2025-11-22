





import 'package:flutter/material.dart';


final List <String> iconList = [
  "assets/icons/home_icon.png",
  "assets/icons/category_icon.png",
  "assets/icons/heart_icon.png",
  "assets/icons/more_icon.png",
];

final List <String> titles = [
  "Home",
  "Categories",
  "Favourite",
  "More"
];

class BottomNavBar extends StatefulWidget {

  final int activeIndex;

  final Function(int) onTabSelected;

  const BottomNavBar({super.key, required this.onTabSelected, required this.activeIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {



  @override
  Widget build(BuildContext context) {
    return Container(
          height: 90,
          decoration: BoxDecoration(
            color: Color(0xFFF8F7FB),
            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(iconList.length, (index) {
              final bool isActive = index == widget.activeIndex;
              return GestureDetector(
                onTap: () => widget.onTabSelected(index),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ----------------------------
                    //   КРУГ ДЛЯ АКТИВНОЙ ИКОНКИ
                    // ----------------------------
                    if (isActive)
                      Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 12,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            iconList[index],
                            width: 24,
                            height: 24,
                            color: Color(0xFFF7C84B), // жёлтая активная иконка
                          ),
                        ),
                      )
                    else
                    // ----------------------------
                    //   НЕАКТИВНАЯ ИКОНКА
                    // ----------------------------
                      Image.asset(
                        iconList[index],
                        width: 24,
                        height: 24,
                        color: Color(0xFF3E4554),
                      ),

                    SizedBox(height: 6),

                    // ----------------------------
                    //   ТЕКСТ ПОД ИКОНКАМИ
                    // ----------------------------
                    if (!isActive)
                      Text(
                        titles[index],
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    else
                      SizedBox(height: 12), // компенсируем место, если активный таб
                  ],
                ),
              );
            }),
          ),
        );
  }
}
