import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/features/Login/presentation/manager/BorderStyle.dart';

import '../../../../../core/utilts/style.dart';

class CustomPasswordTextFormFeild extends StatelessWidget {
  const CustomPasswordTextFormFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        obscureText: true,
        onChanged: (p) {},
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'field is required';
          } else
            return null;
        },
        maxLines: 1,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            labelStyle: Styles.style16.copyWith(color: mainColor),
            labelText: 'كلمة السر',
            prefixIcon: const Icon(FontAwesomeIcons.userLock),
            prefixIconColor: mainColor,
            suffixIcon: const Icon(FontAwesomeIcons.solidEyeSlash),
            suffixIconColor: mainColor,
            hintText: 'ادخل كلمة السر الخاص بك هنا ',
            hintStyle: Styles.style16.copyWith(color: mainColor),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            enabledBorder: borderstyle(color: mainColor),
            focusedBorder: borderstyle(color: mainColor.withOpacity(0.7))),
      ),
    );
  }
}
