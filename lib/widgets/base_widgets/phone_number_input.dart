import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({super.key, this.enabled = true, required this.onTap});

  final bool enabled;
  final VoidCallback onTap;

  @override
  State<PhoneNumberInput> createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: IntlPhoneField(
        enabled: widget.enabled,
        initialCountryCode: 'NG',
        keyboardType: TextInputType.phone,
        
      ),
    );
  }
}