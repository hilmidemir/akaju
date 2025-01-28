import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Üretim'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Bildirimler'),
      ],
      selectedItemColor: Color(0xFF003366),
    );
  }
}
