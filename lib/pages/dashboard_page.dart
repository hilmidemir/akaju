import 'package:flutter/material.dart';
import 'package:akaju_project/pages/management_page.dart';
import 'package:akaju_project/pages/production_page.dart';
import 'package:akaju_project/pages/warehouse_page.dart';

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
