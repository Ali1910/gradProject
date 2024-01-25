import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

import '../../../Data/ListOfCities.dart';

class CustomCityPickerListview extends StatelessWidget {
  const CustomCityPickerListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
                child: Text(
                  cities[index],
                  style: Styles.style16.copyWith(color: mainColor),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: mainColor,
              thickness: 0.5,
            );
          },
          itemCount: cities.length),
    );
  }
}
