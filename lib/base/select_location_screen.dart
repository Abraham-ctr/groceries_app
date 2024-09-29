import 'package:flutter/material.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';
import 'package:groceries_store/widgets/base_widgets/button.dart';
import 'package:groceries_store/widgets/base_widgets/go_back_button.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({super.key});

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {

  String _selectedValue = "Option 1";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GoBackButton(),
        
              const SizedBox(height: 30),
        
              Center(child: Image.asset(AppMedia.map)),
        
              const SizedBox(height: 40),
        
              const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Select Your Location", style: TextStyle(color: Color(0xff181725), fontWeight: FontWeight.w500, fontSize: 25)  ),
                    SizedBox(height: 10),
                    Text("Switch on your location to stay int tune with", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 14)  ),
                    Text("what's happening in your area", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 14)  ),
                  ],
                ),
              ),
        
              const SizedBox(height: 50),
        
              DropdownButtonFormField(
                onChanged: (value){
                  setState(() {
                    _selectedValue = value as String;
                  });
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 5),
                  labelText: "Your Zone", labelStyle: TextStyle(color: Color(0xff7C7C7C)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2))
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2))
                  ),
                ),
        
                icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xff7C7C7C) ),
                hint: const Text("Select your zone", style: TextStyle(color: Color(0xffB1B1B1), fontSize: 13)  ),
                elevation: 2,
                items: const [
                  DropdownMenuItem(
                    value: "Option 1",
                    child: Text("Abia", style: TextStyle(color: Color(0xff181725))),
                  ),
                  DropdownMenuItem(
                    value: "Option 2",
                    child: Text("Adamawa", style: TextStyle(color: Color(0xff181725))),
                  ),
                  DropdownMenuItem(
                    value: "Option 3",
                    child: Text("Akwa-Ibom", style: TextStyle(color: Color(0xff181725))),
                  ),
                  DropdownMenuItem(
                    value: "Option 4",
                    child: Text("Anambra", style: TextStyle(color: Color(0xff181725))),
                  ),
                  DropdownMenuItem(
                    value: "Option 5",
                    child: Text("Bauchi", style: TextStyle(color: Color(0xff181725))),
                  ),
                ],
              ),
        
              const SizedBox(height: 40),
        
              DropdownButtonFormField(
                onChanged: (value){
                  setState(() {
                    _selectedValue = value as String;
                  });
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 5),
                  labelText: "Your Area", labelStyle: TextStyle(color: Color(0xff7C7C7C)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2))
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2))
                  ),
                ),
        
                icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xff7C7C7C) ),
                hint: const Text("Types of your area", style: TextStyle(color: Color(0xffB1B1B1), fontSize: 13)  ),
                elevation: 2,
                items: const [
                  DropdownMenuItem(
                    value: "Option 1",
                    child: Text("Abia", style: TextStyle(color: Color(0xff181725))),
                  ),
                  DropdownMenuItem(
                    value: "Option 2",
                    child: Text("Adamawa", style: TextStyle(color: Color(0xff181725))),
                  ),
                  DropdownMenuItem(
                    value: "Option 3",
                    child: Text("Akwa-Ibom", style: TextStyle(color: Color(0xff181725))),
                  ),
                  DropdownMenuItem(
                    value: "Option 4",
                    child: Text("Anambra", style: TextStyle(color: Color(0xff181725))),
                  ),
                ],
              ),
        
              const SizedBox(height: 50),
        
              Button(text: "Submit", onButtonPressed: (){Navigator.pushNamed(context, '/login');} )
            ],
          ),
        ),
      ),
    );
  }
}