import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';
import 'package:groceries_store/widgets/base_widgets/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),

      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: Utils.getWidth(context),
                  height: Utils.setHeight(context, 0.25),
                  child: Image.asset(AppMedia.blurImg, fit: BoxFit.fill,),
                  // color: Colors.red,
                ),
                SizedBox(
                  width: Utils.getWidth(context),
                  height: Utils.setHeight(context, 0.20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 23, sigmaY: 23),
                    child: Container(color: Colors.white.withOpacity(0),),
                  ),
                ),
        
                Center(
                  heightFactor: 3.5,
                  child: Image.asset(AppMedia.orangeLogo),
                )
              ],
            ),
            const SizedBox(height: 30),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Login", style: TextStyle(color: Color(0xff181725), fontWeight: FontWeight.w500, fontSize: 25)   ),
                  const SizedBox(height: 10),
                  const Text("Enter your email and password", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 14)  ),
        
                  const SizedBox(height: 30),
        
                  SizedBox(
                    width: Utils.getWidth(context),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            label: Text("Email", style: TextStyle(color: Color(0xff7C7C7C))  ),
                            hintText: "imshuvo@gmail.com",
                            contentPadding: EdgeInsets.symmetric(horizontal: 5),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0XFFE2E2E2)
                              )
                            )
                          ),
                        ),

                        const SizedBox(height: 50),

                        TextFormField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            label: const Text("Password", style: TextStyle(color: Color(0xff7C7C7C))  ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0XFFE2E2E2)
                              )
                            ),
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              icon: Icon(
                                _obscureText ? Icons.visibility_off : Icons.visibility
                              ),
                            )
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: (){},
                      child: const Text("Forgot Password?"),
                    ),
                  ),

                  const SizedBox(height: 30),

                  Button(text: "Log In", onButtonPressed: (){}),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      Container(
                        color: Colors.red,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            
                          ),
                          onPressed: (){Navigator.pushNamed(context, '/signup');},
                          child: Text("Sign Up", style: TextStyle(color: Color(0xff53B175)),)
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}