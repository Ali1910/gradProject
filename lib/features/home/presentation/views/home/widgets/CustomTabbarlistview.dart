import 'package:flutter/material.dart';
import 'package:qrduation_project/features/home/presentation/views/home/widgets/CustomTabbarContainer.dart';

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
          Custombody(text: 'حاسبة معدل كتلة الجسم'),
          Custombody(text: 'اعدادات NFC'),
          Custombody(text: 'ارشادات')
        ],
      ),
    );
  }
}
