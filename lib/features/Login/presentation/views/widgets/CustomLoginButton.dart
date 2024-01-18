import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: mainColor, fixedSize: const Size(250, 50)),
        onPressed: () {},
        child: Text(
          'تسجيل الدخول',
          style: Styles.styleBold16.copyWith(color: Colors.white),
        ));
  }
}
