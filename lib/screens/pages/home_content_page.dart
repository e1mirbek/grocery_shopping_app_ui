




import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/widgets/cards/product_grid_widget.dart';
import 'package:grocery_shopping_app/widgets/cards/promo_card_widget.dart';

class HomeContentPage extends StatelessWidget {
  const HomeContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child:  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        PromoCardWidget(color: Color(0xFFF9B023), percent: '50% OFF', textColor: Colors.white,),
                        const SizedBox(width: 18,),
                        PromoCardWidget(color: Color(0xFFE4DDCB), percent: '35% OFF', textColor: Colors.black,),
                        const SizedBox(width: 18,),
                        PromoCardWidget(color: Color(0xFFF9B023), percent: '10% OFF', textColor: Colors.white,),
                        const SizedBox(width: 18,),
                        PromoCardWidget(color: Color(0xFFE4DDCB), percent: '67% OFF', textColor: Colors.black,),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text("Deals on Fruits & Tea", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20),),
                  const SizedBox(height: 22,),
                  ProductGridWidget(),
                ],
              ),
            ),
          )
      );
  }
}
