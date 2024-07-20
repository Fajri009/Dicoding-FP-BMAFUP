import 'package:dicoding_fp_bmafup/style/fonts.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart';

class CustomTextField extends StatefulWidget {
  final String inputType;
  const CustomTextField({super.key, required this.inputType});

  @override
  State<StatefulWidget> createState() => _CustomTextField();
}

class _CustomTextField extends State<CustomTextField> {
  String input = "";
  bool isToggleVisible = false;
  final TextStyle textHint = textSmMedium.copyWith(color: neutral900);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFE3F2FD),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary200, width: 2.0),
          borderRadius: BorderRadius.circular(8.0)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary700, width: 2.0),
          borderRadius: BorderRadius.circular(8.0)
        ),
        prefixIcon: getPrefixIcon(widget.inputType),
        suffixIcon: getSuffixPasswordIcon(widget.inputType)
      ),
      style: textHint,
      onChanged: (String value) {
        input = value;
      },
      obscureText: !isToggleVisible,
    );
  }

  Widget? getPrefixIcon(String inputType) {
    switch (inputType) {
      case "email":
        return Icon(Icons.email_outlined, color: primary900);
      case "password":
        return Icon(Icons.vpn_key_outlined, color: primary900);
      default:
        return null;
    }
  }
  
  Widget? getSuffixPasswordIcon(String inputType) {
    switch (inputType) {
      case "password": 
        return IconButton(
          icon:
            isToggleVisible
              ? Icon(Icons.visibility_outlined, color: primary900)
              : Icon(Icons.visibility_off_outlined, color: primary900),
          onPressed: () {
            setState(() {
              isToggleVisible = !isToggleVisible;
            });
          },
        );
    }
    return null;
  }
}