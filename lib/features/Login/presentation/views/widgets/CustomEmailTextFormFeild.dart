import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/features/Login/presentation/manager/BorderStyle.dart';
import 'package:qrduation_project/features/Login/presentation/manager/cubit/LoginCubit.dart';

import '../../../../../core/utilts/style.dart';

class CustomEmailTextFormFeild extends StatelessWidget {
  const CustomEmailTextFormFeild(
      {super.key, required this.onChanged, required this.onSaved});
  final void Function(String) onChanged;
  final void Function(String?) onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        textDirection: TextDirection.ltr,
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'هذا الحقل مطلوب لا يمكن ان يكون فارغا';
            // } else if (!value!.contains('@gmail.com')) {
            //   return 'من فضلك ادخل صيغة ايميل صحيحة';
            // } else {
            return null;
          }
        },
        maxLines: 1,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            labelStyle: Styles.style16.copyWith(color: mainColor),
            labelText: 'البريد الالكتروني',
            prefixIcon: const Icon(FontAwesomeIcons.solidEnvelope),
            prefixIconColor: mainColor,
            hintText: 'ادخل الحساب الخاص بك هنا ',
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
