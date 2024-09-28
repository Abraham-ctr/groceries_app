import 'package:flutter/material.dart';
import 'package:groceries_store/base/number_screen.dart';
import 'package:groceries_store/base/onboarding_screen.dart';
import 'package:groceries_store/base/select_location_screen.dart';
import 'package:groceries_store/base/sign_up_screen.dart';
import 'package:groceries_store/base/splash_screen.dart';
import 'package:groceries_store/base/verification_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Groceries Store",
      // theme: lightTheme(),
      // darkTheme: darkTheme(),
      // themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/number': (context) => const NumberScreen(),
        '/verification': (context) => const VerificationScreen(),
        '/selectlocation': (context) => const SelectLocationScreen(),
      }
    );
  }
}

// ThemeData lightTheme (){
//   return ThemeData(
//     brightness: Brightness.light,
//     primaryColor: Color(0xff53B175),
//     scaffoldBackgroundColor: Color(0xffFCFCFC),
//   );
// }

// ThemeData darkTheme (){
//   return ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: Color(0xff53B175),
//     scaffoldBackgroundColor: Color(0xff1A1D23),
//   );
// }