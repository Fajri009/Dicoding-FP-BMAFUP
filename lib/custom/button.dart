import 'package:dicoding_fp_bmafup/style/colors.dart';
import 'package:dicoding_fp_bmafup/style/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String textButton;
  const CustomButton({super.key, required this.textButton});

  @override
  State<StatefulWidget> createState() => _CustomButton();
}

class _CustomButton extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
        backgroundColor: primary700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
      child: Text(
        widget.textButton,
        style: textSmSemibold.copyWith(color: shades50),
      ),
    );
  }
}