import 'package:flutter/material.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/app_styles.dart';
import 'package:groceries_store/widgets/base_widgets/button.dart';
import 'package:groceries_store/res/utils.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      body: Container(
        height: Utils.getHeight(context),
        width: Utils.getWidth(context),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppMedia.onBoarding), fit: BoxFit.fill ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: Utils.setHeight(context, 0.5),
            width: Utils.getWidth(context),
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppMedia.whiteLogo),
          
                const SizedBox(height: 10),
          
                const Column( //texts
                  children: [
                    Text("Welcome", style: AppStyles.onboardingBigText,),
                    Text("to our store", style: AppStyles.onboardingBigText,),
                    Text("Get your groceries in as fast as one hour", style: AppStyles.onboardingSmallText,),
                  ],
                ),
          
                const SizedBox(height: 35),
          
                Button(text: "Get Started", onButtonPressed: ()=> Navigator.pushNamed(context, '/signin') )
              ],
            ),
          ),
        ),
      ),
    );
  }
}