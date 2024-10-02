import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pop(context),
      child: Container(
        width: 40,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
        // color: Colors.red,
        child: const Icon(Icons.arrow_back_ios_new_rounded, size: 27,),
      ),
    );
  }
}