import 'package:flutter/material.dart';

class GroceriesCategories extends StatelessWidget {
  
  final String text;
  final String imagePath;
  final Color bgColor;

  const GroceriesCategories({
    super.key,
    required this.text,
    required this.imagePath,
    required this.bgColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 100),
      decoration: BoxDecoration(
        color: bgColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(18)
      ),
      child: Row(
        children: [

          // image icon
          Image.asset(imagePath),

          const SizedBox(width:15,),

          // category name
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xff3E423F),
            )
          ),
        ],
      ),
    );
  }
}