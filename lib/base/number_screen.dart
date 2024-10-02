import 'package:flutter/material.dart';
import 'package:groceries_store/widgets/base_widgets/blurred_top_section.dart';
import 'package:groceries_store/widgets/base_widgets/proceed_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),

      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            const BlurredTopSection(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Enter your mobile number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),

                  const SizedBox(height: 30),
                  
                  const Text("Mobile Number", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 12) ),

                  IntlPhoneField(
                    onTap: () {
                      
                    },
                    initialCountryCode: 'NG',
                    keyboardType: TextInputType.phone,
                    disableLengthCheck: true,
                    showDropdownIcon: false,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      border: OutlineInputBorder( borderSide: BorderSide(color: Color(0xffE2E2E2)) )
                    ),
                  ),

                  const SizedBox(height: 100),

                  Container(
                    alignment: Alignment.centerRight,
                    child: ProceedButton(
                      onTapped: () {
                        _focusNode.unfocus();
                        Navigator.pushNamed(context, '/verification');
                      }
                    )
                  )
                ]
              )
            )
          ],
        ),
      )
    );
  }
}