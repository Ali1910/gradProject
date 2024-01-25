import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.value,
    required this.itemslist,
    required this.onChanged,
  });
  final String value;
  final List itemslist;
  final void Function(Object?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: mainColor),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.only(bottom: 15),
      width: MediaQuery.of(context).size.width * 0.43,
      child: DropdownButton(
        isExpanded: true,
        iconSize: 24,
        underline: const SizedBox(),
        iconEnabledColor: mainColor,
        hint: const Text('........ادخل نوعك......'),
        value: value,
        items: itemslist.map((e) {
          return DropdownMenuItem(
            alignment: AlignmentDirectional.centerStart,
            value: e,
            child: Text(
              e,
              style: Styles.style16.copyWith(color: mainColor),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
