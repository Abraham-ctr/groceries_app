import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';
import 'package:groceries_store/widgets/screen_widgets/account_list_tile.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
          
              // profile tile
              Container(
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                // color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // profile image
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Image.asset(AppMedia.apple,),
                    ),
                    const SizedBox(width: 15,),
          
                    // name and email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // name and edit button
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "your name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              width: 30,
                              child: IconButton(
                                onPressed: (){}, 
                                color: const Color(0xff53B175),
                                iconSize: 18,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(0),
                                icon: const Icon(Icons.edit_outlined)
                              ),
                            )
                          ],
                        ),
          
                        // email address
                        const Text(
                          "your email address",
                          style: TextStyle(
                            color: Color(0xff7C7C7C)
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
          
              const Divider(),
              
              const Column(
                children: [
                  // orders tile
                  AccountListTile(icon: FluentIcons.shopping_bag_16_regular, text: "Orders",),
          
                  // my details tile
                  AccountListTile(icon: FluentIcons.card_ui_20_regular, text: "My Details",),
          
                // delivery address tile
                AccountListTile(icon: FluentIcons.location_16_regular, text: "Delivery Address",),
          
                // payment methods tile
                AccountListTile(icon: FluentIcons.payment_16_regular, text: " Payment Methods",),
          
                // promo card tile
                AccountListTile(icon: FluentIcons.ticket_diagonal_16_regular, text: " Promo Card",),
          
                // notifications tile
                AccountListTile(icon: FluentIcons.alert_16_regular, text: " Notifications",),
          
                // help tile
                AccountListTile(icon: FluentIcons.chat_help_20_regular, text: " Help",),
          
                // about tile
                AccountListTile(icon: FluentIcons.error_circle_16_regular, text: " About",),
          
                ],
              ),

              const SizedBox(height: 50),
          
              // logout button
              Container(
                width: Utils.setWidth(context, 0.9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19)
                ),
                child: FloatingActionButton(
                  backgroundColor: const Color(0xffF2F3F2),
                  elevation: 0,
                  focusElevation: 0,
                  onPressed: (){
                    // log out method
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: const Row(
                    children: [
                      // icon
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(Icons.logout_sharp, color: Color(0xff53B175),),
                      ),
                      SizedBox(width: 90,),
                      // text
                      Text("Log Out", style: TextStyle(color: Color(0xff53B175)),)
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
