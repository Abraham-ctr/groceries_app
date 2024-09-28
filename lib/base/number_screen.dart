import 'package:flutter/material.dart';
import 'package:groceries_store/widgets/base_widgets/go_back_button.dart';
import 'package:groceries_store/widgets/base_widgets/proceed_button.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //back button
            const GoBackButton(),

            const SizedBox(height: 50),
        
            //text1
            const Text("Enter your mobile number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),

            const SizedBox(height: 30),
        
            //text2
            const Text("Mobile Number", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 12) ),

            //input
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
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
            
            const SizedBox(height: 100),
            
            //proceed button
            Container(
              alignment: Alignment.centerRight,
              child: ProceedButton(onTapped: () { Navigator.pushNamed(context, '/verification'); },)
            )
          ],
        ),
      ),
    );
  }
}