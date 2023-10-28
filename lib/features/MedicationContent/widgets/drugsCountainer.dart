import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class DrugContainer extends StatelessWidget {
  const DrugContainer(
      {super.key, required this.drugName, required this.letter});

  final String drugName;
  final String letter;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.90,
            child: Text(
              drugName,
              style: Styles.style24.copyWith(color: mainColor),
            ),
          ),
          Text(letter, style: Styles.style13.copyWith(color: mainColor)),
        ],
      ),
    );
  }
}
