import 'package:flutter/material.dart';
import 'package:groceries_store/widgets/utils.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text, required this.onButtonPressed});

  final String text;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container( //FAB
      width: Utils.setWidth(context, 0.9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19)
      ),
      child: FloatingActionButton(
        elevation: 0,
        focusElevation: 0,
        onPressed: onButtonPressed,
        backgroundColor: const Color(0xff53B175),
        child: Text(text, style: const TextStyle(color: Color(0xffFFFFFF)),),
      ),
    );
  }
}
