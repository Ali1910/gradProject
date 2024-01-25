import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/features/BMI/presenatation/views/BMIViewBody.dart';
import 'package:qrduation_project/features/BMI/presenatation/views/widgets/CustomAppbar.dart';

class BMIView extends StatelessWidget {
  const BMIView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(title: 'حاسبة معدل كتلة الجسم'),
        body: BMIviewBody(),
      ),
    );
  }
}
