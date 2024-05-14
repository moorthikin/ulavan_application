import 'package:flutter/material.dart';
import 'package:ulavan/constants/colors.dart';
import 'package:ulavan/constants/routes.dart';
import 'package:ulavan/util/const_widget.dart';
import 'package:ulavan/util/custom_button.dart';
import 'package:ulavan/util/customtext_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextField(
          heading: "Email",
          input: TextInputType.emailAddress,
          //helperText: "Enter your name",
          prefix: const Icon(Icons.person),
        ),
        addSize(10),
        CustomTextField(
          heading: "password",
           input: TextInputType.text,
          //helperText: "Enter your password",
          prefix: const Icon(Icons.lock),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Row(
            children: [
              const Text("Don't have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.signup);
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: secondary),
                  ))
            ],
          ),
        ),
        addSize(20),
        CustomButton(
          height: 50,
          width: 200,
          text: "Login",
          press: () {
            Navigator.pushNamed(context, Routes.homeScreen);
          },
        )
      ],
    ));
  }
}
