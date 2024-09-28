import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pop(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        width: 30,
        // color: Colors.red,
        child: const Icon(Icons.arrow_back_ios_new_rounded, size: 27,),
      ),
    );
  }
}