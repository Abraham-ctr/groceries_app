import 'package:flutter/material.dart';

class DoubleText extends StatelessWidget {
  const DoubleText({super.key, required this.firstText});

  final String firstText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(firstText, style: const TextStyle(color: Color(0xff181725), fontWeight: FontWeight.w500, fontSize: 22 )  ),
          GestureDetector(
            onTap: (){},
            child: const Text("See all", style: TextStyle(color: Color(0xff53B175), fontSize: 15 )  )
          )
        ],
      ),
    );
  }
}
