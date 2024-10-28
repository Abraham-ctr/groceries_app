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
      backgroundColor: Colors.transparent,
    
    body: SizedBox(
      width: Utils.setWidth(context, 1.0),
      height: Utils.getHeight(context),
      child: Stack(
        alignment: Alignment.center,
        children: [

          // background image level
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(AppMedia.onBoarding, fit: BoxFit.cover)
          ),

          // text and logo level
          SizedBox(
            child: Column(
              children: [
                // top half
                const Expanded(child: SizedBox()),

                // bottom half
                Expanded(
                  child: Column(
                    children: [
                      // logo
                      Image.asset(AppMedia.whiteLogo),
                      const SizedBox(height: 10),

                      // texts
                      const Text("Welcome", style: AppStyles.onboardingBigText,),
                      const Text("to our store", style: AppStyles.onboardingBigText,),
                      const Text("Get your groceries in as fast as one hour", style: AppStyles.onboardingSmallText,),
                      const SizedBox(height: 35),

                      // button
                      Button(text: "Get Started", onButtonPressed: (){Navigator.pushNamed(context, '/signin'); } )
                    ],
                  )
                )
              ],
            ),
          ),

        ],
      ),
    )
    );
  }
}



