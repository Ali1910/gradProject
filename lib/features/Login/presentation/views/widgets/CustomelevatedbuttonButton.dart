import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class Customelevatedbutton extends StatelessWidget {
  const Customelevatedbutton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: mainColor, fixedSize: const Size(250, 50)),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.styleBold16.copyWith(color: Colors.white),
        ));
  }
}
