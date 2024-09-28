import 'package:flutter/material.dart';

class ProceedButton extends StatelessWidget {
  const ProceedButton({super.key, required this.onTapped});

  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff53B175),
      
        ),
        child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 20),
      ),
    );
  }
}