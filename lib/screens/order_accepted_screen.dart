import 'package:flutter/material.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';
import 'package:groceries_store/widgets/base_widgets/blurred_top_section.dart';
import 'package:groceries_store/widgets/base_widgets/button.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,

      body: Stack(
        children: [

          const BlurredTopSection(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height:160),
                // IMAGE
                Image.asset(AppMedia.accepted, height: 180,),
                const SizedBox(height: 30),
                    
                // BIG TEXT
                const Text(
                  "Your Order has been accepted",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

              // SMALL TEXT
              const Text(
                "Your items have been placed and is on its way to being processed",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey
                  ),
                  textAlign: TextAlign.center,
              ),

              const Spacer(),
                    
              // BUTTONS
              Column(
                children: [
                  Button(text: "Track Order", onButtonPressed: (){} ),
                  GestureDetector(
                    onTap: ()=> Navigator.pushNamed(context, '/bottomnavbar'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: const Text(
                          "Back to home",
                          style: TextStyle(
                            fontSize: 16,
                        ),
                      )
                    ),
                  )
                ],
              ),
            ],
                    ),
          ),
        ]
      ),
    );
  }
}