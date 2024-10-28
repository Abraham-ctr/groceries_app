import 'package:flutter/material.dart';

class SearchProductsTile extends StatelessWidget {

  final String text;
  final Color color;
  final String imagePath;
  final Function()? onTap;

  const SearchProductsTile({
    super.key,
    required this.text,
    required this.color,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 10),
        height: 200,
        width: 180,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(18)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Image.asset(imagePath,)
            ),
      
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}