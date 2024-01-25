import 'package:flutter/material.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomRegisterationFormFeild.dart';

class CustomTextFormRow extends StatelessWidget {
  const CustomTextFormRow({
    super.key,
    required this.label1,
    required this.hint1,
    required this.label2,
    required this.hint2,
    required this.width,
  });
  final String label1;
  final String hint1;
  final String label2;
  final String hint2;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextFormFeildRegisteration(
          label: label1,
          hint: hint1,
          width: width,
          autovalidateMode: AutovalidateMode.always,
        ),
        CustomTextFormFeildRegisteration(
          label: label2,
          hint: hint2,
          width: width,
          autovalidateMode: AutovalidateMode.always,
        ),
      ],
    );
  }
}
