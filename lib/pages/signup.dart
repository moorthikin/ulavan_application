import 'package:flutter/material.dart';
import 'package:ulavan/constants/colors.dart';
import 'package:ulavan/constants/routes.dart';
import 'package:ulavan/util/const_widget.dart';
import 'package:ulavan/util/custom_button.dart';
import 'package:ulavan/util/customtext_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Sign up"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                heading: "Name",
                //helperText: "Enter your name",
                prefix: const Icon(Icons.person),
              ),
              addSize(10),
              CustomTextField(
                heading: "Email",
                //helperText: "Enter your password",
                prefix: const Icon(Icons.mail),
              ),
              addSize(10),
              CustomTextField(
                heading: "Phone",
                //helperText: "Enter your password",
                prefix: const Icon(Icons.phone),
              ),
              addSize(10),
              CustomTextField(
                heading: "Password",
                //helperText: "Enter your password",
                prefix: const Icon(Icons.lock),
              ),
              addSize(10),
              CustomTextField(
                heading: "Confirm Password",
                //helperText: "Enter your password",
                prefix: const Icon(Icons.remove_red_eye),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.login);
                        },
                        child: const Text(
                          "Log in",
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
                text: "Sign up",
                press: () {
                  Navigator.pushNamed(context, Routes.homeScreen);
                },
              )
            ],
          ),
        ));
  }
}
