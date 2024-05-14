import 'package:flutter/material.dart';
import 'package:ulavan/constants/routes.dart';
import 'package:ulavan/pages/home.dart';
import 'package:ulavan/pages/login.dart';
import 'package:ulavan/pages/signup.dart';
import 'package:ulavan/pages/splash.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (context) => const SplashScreen(),
        Routes.login: (context) => const Login(),
        Routes.signup: (context) => const SignupScreen(),
        Routes.homeScreen: (context) => const HomeScreen()
      },
      // theme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
