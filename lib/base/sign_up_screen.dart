import 'package:flutter/material.dart';
import 'package:groceries_store/widgets/base_widgets/blurred_top_with_orange_logo.dart';
import 'package:groceries_store/widgets/base_widgets/button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final bool _isValidEmail = false;
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
                  const Text("Sign Up", style: TextStyle(color: Color(0xff181725), fontWeight: FontWeight.w500, fontSize: 25)   ),

                  const SizedBox(height: 10),

                  const Text("Enter your credentials to continue", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 14)  ),
        
                  const SizedBox(height: 30),

                  //form
                  Form(
                    child: Column(
                      children: [

                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Username"),
                            floatingLabelBehavior: FloatingLabelBehavior.auto
                          ),
                        ),
                  
                        const SizedBox(height: 50),
                  
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            label: const Text("Email", style: TextStyle(color: Color(0xff7C7C7C))  ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                            border: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFFE2E2E2) )  ),
                            suffixIcon: _isValidEmail ? const Icon(Icons.check, color: Colors.green,) : const Icon(Icons.close, color: Colors.red),
                          ),
                          onTap: () {
                            const UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFFE2E2E2) )  );
                          },
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

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 23,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("By continuing you agree to our ", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 14)  ),
                            TextButton(
                              style: TextButton.styleFrom(padding: EdgeInsets.zero),
                              onPressed: (){},
                              child: const Text("Terms of Service", style: TextStyle(color: Color(0xff53B175)),)
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 23,
                        child: Row(
                          children: [
                            const Text("and ", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 14)  ),
                            TextButton(
                              style: TextButton.styleFrom(padding: EdgeInsets.zero),
                              onPressed: (){},
                              child: const Text("Privacy Policy", style: TextStyle(color: Color(0xff53B175)),)
                            )
                          ],
                        ),
                      )
                  
                    ],
                  ),
                  const SizedBox(height: 30),

                  Button(text: "Sign Up", onButtonPressed: (){Navigator.pushReplacementNamed(context, '/login');} ),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          
                        ),
                        onPressed: (){Navigator.pushNamed(context, '/login');},
                        child: const Text("Log In", style: TextStyle(color: Color(0xff53B175)),)
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