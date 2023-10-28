import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/home/presentation/views/home/widgets/CustomBodyContatiner.dart';

class CustomServiceRowCustomBodyContinerListView extends StatelessWidget {
  const CustomServiceRowCustomBodyContinerListView({
    super.key,
    required this.text1,
    required this.icon1,
    required this.text2,
    required this.icon2,
    required this.text3,
    required this.icon3,
    required this.mainText,
  });
  final String mainText;
  final String text1;
  final IconData icon1;
  final String text2;
  final IconData icon2;
  final String text3;
  final IconData icon3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              mainText,
              style: GoogleFonts.ibmPlexSansArabic(
                  textStyle: Styles.style24.copyWith(color: Colors.black)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBodyContainer(
                icon: icon1,
                text: text1,
              ),
              CustomBodyContainer(
                icon: icon2,
                text: text2,
              ),
              CustomBodyContainer(
                icon: icon3,
                text: text3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
