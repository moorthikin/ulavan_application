import 'package:flutter/material.dart';
import 'package:ulavan/auth/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService splash = SplashService();

  @override
  void initState() {
    super.initState();
    splash.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash screen"),
      ),
    );
  }
}
