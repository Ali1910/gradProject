import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrduation_project/core/cubits/bottomnavigationbarcubit/Bottomnavigationbarcubit.dart';
import 'package:qrduation_project/core/cubits/bottomnavigationbarcubit/Bottomnavigationvarstates.dart';
import 'package:qrduation_project/core/utilts/constans.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavagationbarCubit, BottomNavigationBarStates>(
      builder: (context, state) {
        return BottomNavigationBar(
          iconSize: 30,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          enableFeedback: false,
          elevation: 0,
          selectedItemColor: mainColor,
          unselectedItemColor: Colors.black.withOpacity(0.6),
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            BlocProvider.of<NavagationbarCubit>(context).tapped(index);
          },
          currentIndex:
              BlocProvider.of<NavagationbarCubit>(context).currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.idCard), label: "NFC"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.podcast), label: 'سؤال وجواب'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.notesMedical), label: 'تقارير'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.person), label: 'حساب شخصي '),
          ],
        );
      },
    );
  }
}
