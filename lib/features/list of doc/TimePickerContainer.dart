import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class TimePickerContatiner extends StatelessWidget {
  const TimePickerContatiner({
    super.key,
    required this.color,
    required this.textcolor,
  });
  final Color color;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(2)),
      child: Center(
        child: Text(
          '9:00',
          style: Styles.style13.copyWith(color: textcolor),
        ),
      ),
    );
  }
}

List<Color> ccolors = [
  mainColor,
  kCountainersColor,
  kCountainersColor,
  kCountainersColor,
  kCountainersColor
];
List<Color> tcolors = [
  Colors.white,
  mainColor,
  mainColor,
  mainColor,
  mainColor
];
