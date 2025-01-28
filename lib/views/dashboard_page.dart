import 'package:flutter/material.dart';
import 'package:akaju_project/views/management_page.dart';
import 'package:akaju_project/views/production_page.dart';
import 'package:akaju_project/views/warehouse_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Color(0xFF003366),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManagementPage()),
                );
              },
              child: Text('Yönetim Sayfası'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductionPage()),
                );
              },
              child: Text('Üretim Sayfası'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WarehousePage()),
                );
              },
              child: Text('Depo Sayfası'),
            ),
          ],
        ),
      ),
    );
  }
}
