import 'package:dicoding_fp_bmafup/custom/button.dart';
import 'package:dicoding_fp_bmafup/custom/check_box.dart';
import 'package:dicoding_fp_bmafup/style/fonts.dart';
import 'package:flutter/material.dart';

import '../custom/text_field.dart';
import '../style/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textPrimary900 = displayXsSemibold.copyWith(color: primary900);
    final TextStyle textNeutral700 = textSmRegular.copyWith(color: neutral700);
    final TextStyle textShades100 = textSmMedium.copyWith(color: shades100);

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
                Image.asset("images/login_ilust.jpg"),
                const SizedBox(height: 20.0),
                Text(
                  "Login",
                  style: textPrimary900,
                ),
                const SizedBox(height: 10.0),
                Text(
                  "Hello there, login to continue",
                  style: textNeutral700,
                ),
                const SizedBox(height: 25.0),
                Text(
                  "Email",
                  style: textShades100,
                ),
                const SizedBox(height: 10.0),
                const CustomTextField(inputType: "email"),
                const SizedBox(height: 15.0),
                Text(
                  "Password",
                  style: textShades100,
                ),
                const SizedBox(height: 10.0),
                const CustomTextField(inputType: "password"),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomCheckBox(hintCheckBox: "Remember Me"),
                    GestureDetector(
                      child: Text(
                        "Forgot Password?",
                        style: textXxsRegular.copyWith(color: primary900)
                      ),
                      onTap: () {},
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                const CustomButton(textButton: "Login"),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: textXsRegular.copyWith(color: neutral900),
                    ),
                    const SizedBox(width: 5.0),
                    GestureDetector(
                      child: Text(
                        "Sign Up",
                        style: textXsRegular.copyWith(color: primary900),
                      ),
                      onTap: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}