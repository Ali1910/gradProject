import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utils/constans.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      enableFeedback: false,
      selectedItemColor: mainColor,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {},
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
        BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "BMI"),
        BottomNavigationBarItem(
            icon: Icon(Icons.question_answer), label: 'سؤال وجواب'),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'تقارير'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'حساب شخصي '),
      ],
    );
  }
}
