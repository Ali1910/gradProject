import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/features/Login/presentation/manager/BorderStyle.dart';
import 'package:qrduation_project/features/Login/presentation/manager/cubit/LoginCubit.dart';

import '../../../../../core/utilts/style.dart';

class CustomPasswordTextFormFeild extends StatelessWidget {
  const CustomPasswordTextFormFeild(
      {super.key, required this.onChanged, required this.onSaved});
  final void Function(String) onChanged;
  final void Function(String?) onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        textDirection: TextDirection.ltr,
        obscureText: BlocProvider.of<Logincubit>(context).isobscure,
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'هذا الحقل مطلوب لا يمكن ان يكون فارغا';
          }
          // if (!BlocProvider.of<Logincubit>(context)
          //     .validateCpatialStructure(value!)) {
          //   return 'من فضلك ادخل باسورد مناسب ';
          // }
          return null;
        },
        maxLines: 1,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            labelStyle: Styles.style16.copyWith(color: mainColor),
            labelText: 'كلمة السر',
            prefixIcon: const Icon(FontAwesomeIcons.userLock),
            prefixIconColor: mainColor,
            suffixIcon: IconButton(
              icon: Icon(BlocProvider.of<Logincubit>(context).isobscure
                  ? FontAwesomeIcons.solidEyeSlash
                  : FontAwesomeIcons.solidEye),
              onPressed: () {
                BlocProvider.of<Logincubit>(context).showpassword();
              },
            ),
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
