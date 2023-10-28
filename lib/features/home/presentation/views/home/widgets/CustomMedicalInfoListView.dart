import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class CustomMedicalInfoListView extends StatelessWidget {
  const CustomMedicalInfoListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'معلومات طبية',
              style: GoogleFonts.ibmPlexSansArabic(
                textStyle: Styles.style24.copyWith(color: Colors.black),
              ),
            ),
            Text(
              'عرض الكل',
              style: GoogleFonts.ibmPlexSansArabic(
                textStyle:
                    Styles.style16.copyWith(color: const Color(0xff13baba)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey.withOpacity(0.1),
                      radius: 40,
                      child: Icon(
                        Icons.food_bank,
                        color: mainColor,
                        size: 30,
                      ),
                    ),
                    Text('حميات غذائية', style: Styles.style14),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 15,
                );
              },
              itemCount: 7),
        ),
      ],
    );
  }
}
