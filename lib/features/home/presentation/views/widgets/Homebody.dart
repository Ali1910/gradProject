import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrduation_project/features/MedicationContent/DrugContentView.dart';
import 'package:qrduation_project/features/home/presentation/views/widgets/CustomBodyContinerListView.dart';
import 'package:qrduation_project/features/home/presentation/views/widgets/CustomMedicalInfoListView.dart';
import 'package:qrduation_project/features/home/presentation/views/widgets/CustomNewsContainer.dart';
import 'package:qrduation_project/features/home/presentation/views/widgets/CustomTabbarlistview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomTabBar(),
            const SizedBox(
              height: 20,
            ),
            const CustomNewsContainer(),
            const SizedBox(
              height: 50,
            ),
            const CustomServiceRowCustomBodyContinerListView(
              mainText: 'خدماتنا الطبية',
              icon1: Icons.medical_information,
              icon2: FontAwesomeIcons.chartBar,
              icon3: Icons.warning_amber_outlined,
              text1: 'اختيار  طبيب',
              text2: 'محادثة طبيب',
              text3: 'تحذيرات ',
            ),
            const CustomServiceRowCustomBodyContinerListView(
              mainText: 'خدماتنا الكترونية',
              icon1: FontAwesomeIcons.person,
              icon2: FontAwesomeIcons.thinkPeaks,
              icon3: Icons.medication,
              text1: 'تشخيص',
              text2: 'تنبؤات',
              text3: 'تعارضات ادوية ',
            ),
            const CustomServiceRowCustomBodyContinerListView(
              mainText: 'البيانات الشخصية',
              icon1: FontAwesomeIcons.boxArchive,
              icon2: FontAwesomeIcons.book,
              icon3: Icons.hourglass_empty,
              text1: 'السجل',
              text2: 'حجوزات',
              text3: 'اخر',
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DrugContentView();
                      },
                    ),
                  );
                },
                child: const CustomMedicalInfoListView()),
          ],
        ),
      ),
    );
  }
}
