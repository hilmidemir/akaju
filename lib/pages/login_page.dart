import 'package:flutter/material.dart';
import 'package:akaju_project/utils/utils.dart';
import 'package:akaju_project/pages/dashboard_page.dart';
import 'package:akaju_project/widgets/user_name_input.dart';
import 'package:akaju_project/widgets/password_input.dart';
import 'package:akaju_project/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.akajuBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'AKAJU',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              const UserNameInput(),
              const SizedBox(height: 16),
              const PasswordInput(),
              const SizedBox(height: 24),
              LoginButton(
                label: 'Giriş yap',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
