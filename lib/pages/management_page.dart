import 'package:flutter/material.dart';

class ManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yönetim Sayfası'),
        backgroundColor: Color(0xFF003366),
      ),
      body: Center(child: Text('Yönetim Sayfası İçeriği')),
    );
  }
}
