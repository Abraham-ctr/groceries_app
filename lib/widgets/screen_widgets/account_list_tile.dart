import 'package:flutter/material.dart';

class AccountListTile extends StatelessWidget {

  final IconData icon;
  final String text;

  const AccountListTile({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          // top: BorderSide(),
          bottom: BorderSide(color: Color(0xffE2E2E2) )
        )
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(text),
        trailing: const Icon(Icons.arrow_forward_ios),
        contentPadding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 15),
        onTap: (){},
      ),
    );
  }
}
