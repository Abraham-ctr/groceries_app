import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_store/screens/account_screen.dart';
import 'package:groceries_store/screens/cart_screen.dart';
import 'package:groceries_store/screens/explore_screen.dart';
import 'package:groceries_store/screens/favourites_screen.dart';
import 'package:groceries_store/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final _screens = [
    const HomeScreen(),
    ExploreScreen(),
    const CartScreen(),
    const FavouritesScreen(),
    const AccountScreen(),
  ];
  int _selectedIndex = 0;
  void _onIconTapped (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      // extendBody: true,

      body: _screens[_selectedIndex],
      
      bottomNavigationBar: SizedBox(
        height: 70,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 241, 241, 241),
                elevation: 0,
                currentIndex: _selectedIndex,
                onTap: _onIconTapped,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                unselectedItemColor: const Color(0xff181725),
                selectedItemColor: const Color(0xff53B175),
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.shop, size: 15), label: "Shop",),
                  BottomNavigationBarItem(icon: Icon(FluentIcons.sidebar_search_rtl_20_regular, size: 22), label: "Explore"),
                  BottomNavigationBarItem(icon: Icon(FluentIcons.cart_16_regular, size: 22), label: "Cart"),
                  BottomNavigationBarItem(icon: Icon(FluentIcons.heart_12_regular, size: 22), label: "Favourite"),
                  BottomNavigationBarItem(icon: Icon(FluentIcons.person_12_regular, size: 22), label: "Account"),
                ]
              ),
        ),
      ),
    );
  }
}