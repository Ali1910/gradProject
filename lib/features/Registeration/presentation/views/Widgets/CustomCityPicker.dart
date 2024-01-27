import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/Registeration/Data/ListOfCities.dart';
import 'package:qrduation_project/features/Registeration/presentation/Manager/RegisterationCubit.dart';
import 'package:qrduation_project/features/Registeration/presentation/Manager/RegisterationStates.dart';

class CustomCityPicker extends StatelessWidget {
  const CustomCityPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var of = BlocProvider.of<RegisterationCubit>(context);
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 16),
                        child: GestureDetector(
                          onTap: () {
                            BlocProvider.of<RegisterationCubit>(context)
                                .citydropdownmenuvaluechanged(cities[index]);

                            print(BlocProvider.of<RegisterationCubit>(context)
                                .city);

                            Navigator.pop(context);
                          },
                          child: Text(
                            cities[index],
                            style: Styles.style16.copyWith(color: mainColor),
                          ),
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
          },
        );
      },
      child: BlocBuilder<RegisterationCubit, Registerationstates>(
        builder: (context, state) {
          return Container(
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
                  of.citypicked ? of.city : 'اختار ميدنتك',
                  style: Styles.style16.copyWith(color: mainColor),
                ),
                Icon(
                  FontAwesomeIcons.locationDot,
                  size: 24,
                  color: mainColor,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
