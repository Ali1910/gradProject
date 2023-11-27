import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/ListOfDocotrs_appointment/ListOfDoctor.dart';

class SpeciliatyContainer extends StatelessWidget {
  const SpeciliatyContainer(
      {super.key, required this.text, required this.widget});
  final String text;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return widget;
            },
          ),
        );
      },
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 16),
          child: Text(
            text,
            style: Styles.styleBold16.copyWith(color: mainColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
