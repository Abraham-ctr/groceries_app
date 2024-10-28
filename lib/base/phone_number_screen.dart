import 'package:flutter/material.dart';
import 'package:groceries_store/widgets/base_widgets/blurred_top_section.dart';
import 'package:groceries_store/widgets/base_widgets/proceed_button.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {

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
                    initialCountryCode: 'NG',
                    keyboardType: TextInputType.phone,
                    disableLengthCheck: true,
                    showDropdownIcon: false,
                    pickerDialogStyle: PickerDialogStyle(
                      backgroundColor: const Color(0xffFEFEFE),
                      searchFieldCursorColor: Colors.black,
                      listTilePadding: const EdgeInsets.symmetric(vertical: 0),
                    ),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder( borderSide: BorderSide(color: Color(0xffE2E2E2)) ),
                      contentPadding: EdgeInsets.only(top: 12.5)
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