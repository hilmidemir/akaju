import 'package:flutter/material.dart';
import 'package:akaju_project/utils/utils.dart';

class UserNameInput extends StatelessWidget {
  const UserNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.akajuWhite,
        hintText: 'Kullanıcı Adı',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
