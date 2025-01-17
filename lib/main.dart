import 'package:akaju_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:akaju_project/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.akajuBackgroundColor),
      ),
      home: LoginPage(),
    );
  }
}
