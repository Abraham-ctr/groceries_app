import 'package:flutter/material.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';
import 'package:groceries_store/widgets/base_widgets/phone_number_input.dart';

class SignInScreen extends StatelessWidget {
   const SignInScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      
      body: ListView(
        children: [

          Stack(
            children: [
              Image.asset(AppMedia.signUp),

              Positioned(
                left: 242,
                top: 9,
                child: Transform(
                  transform: Matrix4.rotationZ(101.17),
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    decoration: BoxDecoration(
                      // color: const Color(0xffFEFEFE),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text("nectar", style: TextStyle(color:Color(0xff53B175), fontWeight: FontWeight.bold, fontSize: 25)  )
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),
          
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Get your groceries", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)  ),
                const Text("with nectar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)  ),
                const SizedBox(height: 20),

                PhoneNumberInput(enabled: false, onTap: () { Navigator.pushNamed(context, '/phonenumber'); },),
                
                const SizedBox(height: 35),
                const Center(child: Text("Or connect with social media", style: TextStyle(color: Color(0xff828282)),)),
              ],
            ),
          ),

          const SizedBox(height: 35),

          Column(
            children: [
              Container( //FAB 1
                width: Utils.setWidth(context, 0.9),
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19)
                ),
                child: FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: (){},
                  backgroundColor: const Color(0xff5383EC),
                  elevation: 0,
                  highlightElevation: 0,
                  child: const Row(
                    children: [
                      SizedBox(width: 25),
                      Icon(Icons.g_mobiledata, size: 25, color: Color(0xffFFFFFF)  ),
                      SizedBox(width: 35),
                      Text("Continue with Google", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15)  )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Container( //FAB 2
                width: Utils.setWidth(context, 0.9),
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19)
                ),
                child: FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: (){},
                  backgroundColor: const Color(0Xff4A66AC),
                  elevation: 0,
                  highlightElevation: 0,
                  child: const Row(
                    children: [
                      SizedBox(width: 25),
                      Icon(Icons.facebook_rounded, size: 25, color: Color(0xffFFFFFF)  ),
                      SizedBox(width: 35),
                      Text("Continue with Facebook", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15)  )
                    ],
                  ),
                ),
              ),
            ]
          )
        ],
      ),
    );
  }
}