import 'package:flutter/material.dart';
import 'package:groceries_store/base/login_screen.dart';
import 'package:groceries_store/base/number_screen.dart';
import 'package:groceries_store/base/onboarding_screen.dart';
import 'package:groceries_store/base/select_location_screen.dart';
import 'package:groceries_store/base/sign_in_screen.dart';
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
      themeMode: ThemeMode.system,
      
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/signin': (context) => SignInScreen(),
        '/number': (context) => const NumberScreen(),
        '/verification': (context) => const VerificationScreen(),
        '/selectlocation': (context) => const SelectLocationScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),

      }
    );
  }
}
