import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:flutter/material.dart';
import 'TextFieldBackground/TextFieldContainer.dart';


class NormalInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  const NormalInputField({
    Key? key,
    this.hintText="hint text",
    this.icon = Icons.person,
    required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextFormField(
          style: TextStyle(color:kPrimaryColorx),
          controller: controller,
          cursorColor: kPrimaryColorx,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your Id or Email';
            }
            return null;
          },
          decoration: InputDecoration(

            fillColor: textFieldBackColor,
            filled: true,
            icon: Icon(
              icon,
              color: hintColor,
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor),
            border: InputBorder.none,
            errorStyle: TextStyle(color: Colors.redAccent),
          ),
        )
    );
  }
}
