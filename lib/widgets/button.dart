import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color bgColor, fgColor;

  const MyButton({
    super.key,
    required this.title,
    required this.fgColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 40,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: fgColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
