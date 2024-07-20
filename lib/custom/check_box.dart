import 'package:dicoding_fp_bmafup/style/colors.dart';
import 'package:dicoding_fp_bmafup/style/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final String hintCheckBox;

  const CustomCheckBox({super.key, required this.hintCheckBox});

  @override
  State<StatefulWidget> createState() => _CustomCheckBox();
}

class _CustomCheckBox extends State<CustomCheckBox> {
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isRememberMe,
          activeColor: primary700,
          side: BorderSide(
            width: 1.5,
            color: primary400
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onChanged: (bool? value) {
            setState(() {
              isRememberMe = value!;
            });
          },
        ),
        Text(
          widget.hintCheckBox,
          style: textXxsRegular.copyWith(color: shades100),
        )
      ],
    );
  }
}