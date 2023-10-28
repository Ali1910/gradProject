import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          selectedItemColor: mainColor,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            BlocProvider.of<NavagationbarCubit>(context).tapped(index);
          },
          currentIndex:
              BlocProvider.of<NavagationbarCubit>(context).currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_membership), label: "NFC"),
            BottomNavigationBarItem(
                icon: Icon(Icons.question_answer), label: 'سؤال وجواب'),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper), label: 'تقارير'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'حساب شخصي '),
          ],
        );
      },
    );
  }
}
