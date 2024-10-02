import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';

class BlurredTopWithOrangeLogo extends StatelessWidget {
  const BlurredTopWithOrangeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: Utils.getWidth(context),
          height: Utils.setHeight(context, 0.25),
          child: Image.asset(AppMedia.blurImg, fit: BoxFit.fill,),
        ),
        
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 23, sigmaY: 23),
          child: Container(
            width: Utils.getWidth(context),
            height: Utils.setHeight(context, 0.25),
            color: const Color(0xffFEFEFE).withOpacity(0.1),
          ),
        ),
        
        
        Image.asset(AppMedia.orangeLogo)
      ],
    );
  }
}
