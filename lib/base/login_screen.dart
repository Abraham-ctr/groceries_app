import 'package:flutter/material.dart';
import 'package:groceries_store/res/utils.dart';
import 'package:groceries_store/widgets/base_widgets/blurred_top_with_orange_logo.dart';
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
            const BlurredTopWithOrangeLogo(),

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
                            hintText: "example@gmail.com",
                            contentPadding: EdgeInsets.symmetric(horizontal: 5),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0XffE2E2E2)
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

                  Button(text: "Log In", onButtonPressed: (){Navigator.pushReplacementNamed(context, '/bottomnavbar'); }),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: (){Navigator.pushNamed(context, '/signup');},
                        child: const Text("Sign Up", style: TextStyle(color: Color(0xff53B175)),)
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