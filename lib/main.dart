import 'package:flutter/material.dart';
import 'package:groceries_store/base/login_screen.dart';
import 'package:groceries_store/base/phone_number_screen.dart';
import 'package:groceries_store/base/onboarding_screen.dart';
import 'package:groceries_store/base/select_location_screen.dart';
import 'package:groceries_store/base/sign_in_screen.dart';
import 'package:groceries_store/base/sign_up_screen.dart';
import 'package:groceries_store/base/splash_screen.dart';
import 'package:groceries_store/base/verification_screen.dart';
import 'package:groceries_store/models/product.dart';
import 'package:groceries_store/screens/bottom_nav_bar.dart';
import 'package:groceries_store/screens/cart_screen.dart';
import 'package:groceries_store/screens/description_page.dart';
import 'package:groceries_store/screens/favourites_screen.dart';
import 'package:groceries_store/screens/filter_screen.dart';
import 'package:groceries_store/screens/order_accepted_screen.dart';
import 'package:groceries_store/screens/product_list_screen.dart.dart';
import 'package:groceries_store/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Groceries Store",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const SplashScreen(),
        '/onboarding': (BuildContext context) => const OnboardingScreen(),
        '/signin': (BuildContext context) =>  const SignInScreen(),
        '/phonenumber': (BuildContext context) =>  const PhoneNumberScreen(),
        '/verification': (BuildContext context) => const VerificationScreen(),
        '/selectlocation': (BuildContext context) => const SelectLocationScreen(),
        '/login': (BuildContext context) => const LoginScreen(),
        '/signup': (BuildContext context) => const SignUpScreen(),
        '/bottomnavbar': (BuildContext context) => const BottomNavBar(),

        '/home': (BuildContext context) => const HomeScreen(),
        '/descriptionPage': (BuildContext context) => const DescriptionPage(),
        '/productListScreen': (BuildContext context) {
          final ProductCategory category = ModalRoute.of(context)!.settings.arguments as ProductCategory;
          return ProductListScreen(category: category);
        },
        '/filter': (BuildContext context) => const FilterScreen(),
        '/cart': (BuildContext context) => const CartScreen(),
        '/orderAccepted': (BuildContext context) => const OrderAcceptedScreen(),
        '/favourite': (BuildContext context) => const FavouritesScreen(),
      }
    );
  }
}
