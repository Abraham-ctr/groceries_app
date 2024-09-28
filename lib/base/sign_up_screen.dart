import 'package:flutter/material.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/widgets/utils.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      body: ListView(
        children: [
          Image.asset(AppMedia.signUp),

          const SizedBox(height: 40),
          
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Get your groceries", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)  ),
                const Text("with nectar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)  ),
                const SizedBox(height: 10),

                TextField(
                  onTap: () => Navigator.pushNamed(context, '/number'),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE2E2E2)
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE2E2E2)
                      )
                    )
                  ),
                ),
                
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
                  onPressed: (){},
                  backgroundColor: const Color(0Xff4A66AC),
                  elevation: 0,
                  highlightElevation: 0,
                  child: const Row(
                    children: [
                      SizedBox(width: 25),
                      Icon(Icons.facebook_rounded, size: 25, color: Color(0xffFFFFFF)  ),
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