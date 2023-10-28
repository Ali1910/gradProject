import 'package:flutter/material.dart';
import 'package:qrduation_project/features/home/presentation/views/home/widgets/CustomBodyContinerListView.dart';
import 'package:qrduation_project/features/home/presentation/views/home/widgets/CustomMedicalInfoListView.dart';
import 'package:qrduation_project/features/home/presentation/views/home/widgets/CustomNewsContainer.dart';
import 'package:qrduation_project/features/home/presentation/views/home/widgets/CustomTabbarlistview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTabBar(),
            SizedBox(
              height: 20,
            ),
            CustomNewsContainer(),
            SizedBox(
              height: 50,
            ),
            CustomServiceRowCustomBodyContinerListView(
              mainText: 'خدماتنا الطبية',
              icon1: Icons.medical_information,
              icon2: Icons.message_outlined,
              icon3: Icons.warning_amber_outlined,
              text1: 'اختيار  طبيب',
              text2: 'محادثة طبيب',
              text3: 'تحذيرات ',
            ),
            CustomServiceRowCustomBodyContinerListView(
              mainText: 'خدماتنا الكترونية',
              icon1: Icons.person,
              icon2: Icons.batch_prediction,
              icon3: Icons.medication,
              text1: 'تشخيص',
              text2: 'تنبؤات',
              text3: 'تعارضات ادوية ',
            ),
            CustomServiceRowCustomBodyContinerListView(
              mainText: 'البيانات الشخصية',
              icon1: Icons.archive,
              icon2: Icons.book_sharp,
              icon3: Icons.hourglass_empty,
              text1: 'السجل',
              text2: 'حجوزات',
              text3: 'اخر',
            ),
            CustomMedicalInfoListView(),
          ],
        ),
      ),
    );
  }
}
