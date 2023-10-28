import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class PersonalProfileBodyView extends StatelessWidget {
  const PersonalProfileBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'الحساب الشخصي ',
        style: Styles.styleBold16.copyWith(color: mainColor),
      ),
    );
  }
}
