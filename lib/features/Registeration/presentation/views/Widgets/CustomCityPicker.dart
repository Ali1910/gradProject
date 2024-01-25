import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomCityPickerListView.dart';

class CustomCityPicker extends StatelessWidget {
  const CustomCityPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const CustomCityPickerListview();
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: mainColor),
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.only(bottom: 15),
        width: MediaQuery.of(context).size.width,
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'اختر ميدنتك',
              style: Styles.style16.copyWith(color: mainColor),
            ),
            Icon(
              FontAwesomeIcons.locationDot,
              size: 24,
              color: mainColor,
            )
          ],
        ),
      ),
    );
  }
}
