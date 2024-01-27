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
    required this.validator1,
    required this.validator2,
    required this.onChanged1,
    required this.onFieldSubmitted1,
    required this.onChanged2,
    required this.onFieldSubmitted2,
  });
  final String label1;
  final String hint1;
  final String label2;
  final String hint2;
  final double width;
  final String? Function(String?) validator1;
  final String? Function(String?) validator2;
  final void Function(String) onChanged1;
  final void Function(String) onFieldSubmitted1;
  final void Function(String) onChanged2;
  final void Function(String) onFieldSubmitted2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextFormFeildRegisteration(
          label: label1,
          hint: hint1,
          width: width,
          validator: validator1,
          onChanged: onChanged1,
          onFieldSubmitted: onFieldSubmitted1,
        ),
        CustomTextFormFeildRegisteration(
          label: label2,
          hint: hint2,
          width: width,
          validator: validator2,
          onChanged: onChanged2,
          onFieldSubmitted: onFieldSubmitted2,
        ),
      ],
    );
  }
}
