import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';

class IconRow extends StatelessWidget {
  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.favorite_outline, color: mainColor),
        Icon(Icons.copy, color: mainColor),
        Icon(Icons.share, color: mainColor),
      ],
    );
  }
}
