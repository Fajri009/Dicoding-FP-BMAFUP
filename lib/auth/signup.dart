import 'package:dicoding_fp_bmafup/style/colors.dart';
import 'package:dicoding_fp_bmafup/style/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom/button.dart';
import '../custom/text_field.dart';
import 'login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle placeholder = textSmMedium.copyWith(color: shades100);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25.0,
              horizontal: 25.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/signup_illust.png"),
                const SizedBox(height: 20.0),
                Text(
                  "Sign Up",
                  style: displayXsSemibold.copyWith(color: primary900),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "Create an account to continue",
                  style: textXsRegular.copyWith(color: neutral700)
                ),
                const SizedBox(height: 25.0),
                Text(
                  "First Name",
                  style: placeholder
                ),
                const SizedBox(height: 10.0),
                const CustomTextField(inputType: "user"),
                const SizedBox(height: 15.0),
                Text(
                  "Last Name",
                  style: placeholder
                ),
                const SizedBox(height: 10.0),
                const CustomTextField(inputType: "user"),
                const SizedBox(height: 15.0),
                Text(
                  "Email",
                  style: placeholder
                ),
                const SizedBox(height: 10.0),
                const CustomTextField(inputType: "email"),
                const SizedBox(height: 15.0),
                Text(
                  "Password",
                  style: placeholder
                ),
                const SizedBox(height: 10.0),
                const CustomTextField(inputType: "password"),
                const SizedBox(height: 15.0),
                Text(
                  "Confirm Password",
                  style: placeholder
                ),
                const SizedBox(height: 10.0),
                const CustomTextField(inputType: "password"),
                const SizedBox(height: 25.0),
                const CustomButton(textButton: "Sign Up",  destination: LoginPage()),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: textXsRegular.copyWith(color: neutral900),
                    ),
                    const SizedBox(width: 5.0),
                    GestureDetector(
                      child: Text(
                        "Login",
                        style: textXsRegular.copyWith(color: primary900),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const LoginPage();
                        }));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}