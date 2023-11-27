import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class Datepicker extends StatelessWidget {
  Datepicker({super.key});
  final EasyInfiniteDateTimelineController controller =
      EasyInfiniteDateTimelineController();

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {},
      locale: "ar",
      activeColor: mainColor,
      headerProps: EasyHeaderProps(
        monthPickerType: MonthPickerType.switcher,
        selectedDateFormat: SelectedDateFormat.dayOnly,
        monthStyle: Styles.style16.copyWith(color: mainColor),
        selectedDateStyle: Styles.style16.copyWith(
          color: mainColor,
        ),
      ),
      dayProps: EasyDayProps(
        dayStructure: DayStructure.dayStrDayNum,
        inactiveDayStyle: DayStyle(
          dayNumStyle: Styles.style13.copyWith(color: mainColor),
          dayStrStyle: Styles.style13.copyWith(color: mainColor),
        ),
        activeDayStyle: DayStyle(
          dayNumStyle: Styles.style16.copyWith(color: Colors.white),
          dayStrStyle: Styles.style16.copyWith(color: Colors.white),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: mainColor),
        ),
      ),
    );
  }
}
