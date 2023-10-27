import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utils/constans.dart';
import 'package:qrduation_project/core/utils/styles.dart';

class Custombody extends StatelessWidget {
  const Custombody({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.01),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            maxLines: 1,
            style: Styles.style16.copyWith(color: mainColor),
          ),
        ),
      ),
    );
  }
}
