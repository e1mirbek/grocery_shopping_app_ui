




import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final int balance;
  final String currencies;
  final String description;
  final Color color;
  const BalanceCard({super.key, required this.balance, required this.currencies, required this.description, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: 158,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 1 text
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$balance", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800,),),
              Text("$currencies", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400,)),
            ],
          ),
          // 2 text
          Text("$description", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,))
        ],
      ),
    );
  }
}
