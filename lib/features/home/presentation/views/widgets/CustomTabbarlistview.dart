import 'package:flutter/material.dart';
import 'package:qrduation_project/features/BMI/presenatation/views/BMIView.dart';
import 'package:qrduation_project/features/Nfc/presentation/views/NFC/NFC.dart';
import 'package:qrduation_project/features/home/presentation/views/widgets/CustomTabbarContainer.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Custombody(
            text: 'حاسبة معدل كتلة الجسم',
            widget: BMIView(),
          ),
          Custombody(
            text: 'اعدادات NFC',
            widget: NfcViewbody(),
          ),
          Custombody(
            text: 'ارشادات',
            widget: NfcViewbody(),
          )
        ],
      ),
    );
  }
}
