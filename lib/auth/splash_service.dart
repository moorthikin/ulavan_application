import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ulavan/pages/login.dart';
import 'package:ulavan/pages/signup.dart';

class SplashService {
  void isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignupScreen())));
    // } else {
    //   Timer(
    //       const Duration(seconds: 3),
    //       () => Navigator.push(
    //           context, MaterialPageRoute(builder: (context) => LoginScreen())));
    // }
  }
}
