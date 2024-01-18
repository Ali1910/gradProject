import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class CustomloginContainer extends StatelessWidget {
  const CustomloginContainer({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(300),
          bottomRight: Radius.circular(300),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: Styles.styleBold24.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
