import 'package:flutter/material.dart';
import 'package:qrduation_project/features/home/presentation/views/widgets/CustomTabbarContainer.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Custombody(text: 'NFC'),
        Custombody(text: 'اعدادات NFC'),
        Custombody(text: 'ارشادات')
      ],
    );
  }
}
