import 'package:akaju_project/views/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:akaju_project/utils/utils.dart';
import 'package:akaju_project/views/dashboard_page.dart';
import 'package:akaju_project/views/widgets/user_name_input.dart';
import 'package:akaju_project/views/widgets/password_input.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.akajuBackgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'AKAJU',
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Giriş yap',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                ),
              ),
              SizedBox(height: 40.h),
              const UserNameInput(),
              SizedBox(height: 16.h),
              const PasswordInput(),
              SizedBox(height: 24.h),
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
