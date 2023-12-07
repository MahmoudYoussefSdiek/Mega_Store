import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, required this.text, required this.function});
  final String text;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xC4FF0009),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xC4FF0009),
          fontSize: 12,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.50,
        ),
      ),
    );
  }
}
