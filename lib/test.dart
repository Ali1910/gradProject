import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: const TimePIckerContatiner(),
        ),
      ),
    );
  }
}

class TimePIckerContatiner extends StatelessWidget {
  const TimePIckerContatiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
          color: kCountainersColor, borderRadius: BorderRadius.circular(2)),
      child: Center(
        child: Text(
          '9:00',
          style: Styles.style13.copyWith(color: mainColor),
        ),
      ),
    );
  }
}
