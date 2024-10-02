import 'package:flutter/material.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/app_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //method to handle the timer navigation
  @override
  void initState(){
    super.initState();
    // ignore: use_build_context_synchronously
    Future.delayed(const Duration(seconds: 2), (){Navigator.pushReplacementNamed(context, '/onboarding'); } );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff53B175),
        body: Center(
          child: SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppMedia.whiteLogo),
      
                const SizedBox(width: 10),
      
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("nectar", style: AppStyles.bigLogoText,),
                    Text("online groceries", style: AppStyles.smallLogotext,)
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}