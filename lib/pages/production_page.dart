import 'package:flutter/material.dart';

class ProductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Üretim Sayfası'),
        backgroundColor: Color(0xFF003366),
      ),
      body: Center(child: Text('Üretim Sayfası İçeriği')),
    );
  }
}
