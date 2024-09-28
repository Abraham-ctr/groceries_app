import 'package:flutter/material.dart';

class Utils {
  static double getHeight (BuildContext context){
    return MediaQuery.sizeOf(context).height;
  }

  static double getWidth (BuildContext context){
    return MediaQuery.sizeOf(context).width;
  }

  static double setHeight (BuildContext context, double percentage){
    return MediaQuery.sizeOf(context).height * percentage;
  }

  static double setWidth (BuildContext context, double percentage){
    return MediaQuery.sizeOf(context).width * percentage;
  }
  
}