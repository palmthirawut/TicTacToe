import 'package:flutter/material.dart';
import 'package:tictactoe/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: boxColor,
          offset: Offset(0, 0),
          blurRadius: 10,
          spreadRadius: 0,
        ),
      ], borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              minimumSize: Size(width, 50),
              foregroundColor: boxColor,
              elevation: 1,
              backgroundColor: buttonColor),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
