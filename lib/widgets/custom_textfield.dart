import 'package:flutter/material.dart';
import 'package:tictactoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final bool isReadOnly;
  final TextEditingController controller;
  final String hintText;
  const CustomTextField(
      {super.key,
      this.isReadOnly = false,
      required this.controller,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: boxColor, blurRadius: 30, spreadRadius: 2)
      ]),
      child: TextField(
          readOnly: isReadOnly,
          controller: controller,
          decoration: InputDecoration(
              fillColor: bgColor, filled: true, hintText: hintText)),
    );
  }
}
