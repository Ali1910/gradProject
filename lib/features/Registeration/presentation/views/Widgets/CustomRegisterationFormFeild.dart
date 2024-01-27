import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/Login/presentation/manager/BorderStyle.dart';

class CustomTextFormFeildRegisteration extends StatelessWidget {
  const CustomTextFormFeildRegisteration({
    super.key,
    required this.validator,
    required this.label,
    required this.hint,
    required this.width,
    required this.onChanged,
    required this.onFieldSubmitted,
  });
  final String? Function(String?) validator;
  final void Function(String) onChanged;
  final void Function(String) onFieldSubmitted;
  final String label;
  final String hint;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * width,
        child: TextFormField(
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
          maxLines: 1,
          cursorColor: Colors.black,
          decoration: InputDecoration(
              labelStyle: Styles.style16.copyWith(color: mainColor),
              labelText: label,
              prefixIconColor: mainColor,
              hintText: hint,
              hintStyle: Styles.style16.copyWith(color: mainColor),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              enabledBorder: borderstyle(color: mainColor),
              focusedBorder: borderstyle(color: mainColor.withOpacity(0.7))),
        ),
      ),
    );
  }
}
