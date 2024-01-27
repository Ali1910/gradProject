import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/Registeration/presentation/Manager/RegisterationCubit.dart';
import 'package:qrduation_project/features/Registeration/presentation/Manager/RegisterationStates.dart';

class CustomDatepicker extends StatelessWidget {
  const CustomDatepicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var of = BlocProvider.of<RegisterationCubit>(context);
    return GestureDetector(
      onTap: () async {
        DateTime? dateTime = (await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100)));
        BlocProvider.of<RegisterationCubit>(context)
            .datepickedfunc(dateTime ?? DateTime.now());
      },
      child: BlocBuilder<RegisterationCubit, Registerationstates>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: mainColor),
                borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(6),
            margin: const EdgeInsets.only(bottom: 15),
            width: MediaQuery.of(context).size.width * 0.43,
            height: 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  of.datepicked ? of.dateformatted : 'اختار تاريخ ميلادك',
                  style: Styles.style16.copyWith(color: mainColor),
                ),
                Icon(
                  Icons.calendar_today,
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
