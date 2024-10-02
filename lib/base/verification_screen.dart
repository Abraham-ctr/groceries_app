import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceries_store/widgets/base_widgets/blurred_top_section.dart';
import 'package:groceries_store/widgets/base_widgets/proceed_button.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              
              const BlurredTopSection(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Enter your 4-digit code", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),

                    const SizedBox(height: 30),

                    const Text("Code", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 12) ),

                    const TextField(
                      enabled: true,
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: "- - - -",
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffE2E2E2))  ),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffE2E2E2))  )
                      ),
                    ),

                    const SizedBox(height: 100),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Resend Code", style: TextStyle(color: Color(0xff53B175)),),
                        ProceedButton(onTapped: () { Navigator.pushReplacementNamed(context, '/selectlocation'); },)
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}