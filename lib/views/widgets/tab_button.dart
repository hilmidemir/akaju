import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String title;
  final bool isActive;

  const TabButton({required this.title, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Colors.black54,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: isActive ? Color(0xFF003366) : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}
