import 'package:flutter/material.dart';
import 'package:akaju_project/utils/utils.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.akajuWhite,
        hintText: 'Şifre',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
      ),
    );
  }
}
