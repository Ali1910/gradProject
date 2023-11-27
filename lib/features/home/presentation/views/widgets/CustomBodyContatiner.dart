import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class CustomBodyContainer extends StatelessWidget {
  const CustomBodyContainer(
      {super.key,
      required this.text,
      required this.icon,
      required this.widget});

  final String text;
  final IconData icon;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return widget;
          }),
        );
      },
      child: Container(
        height: 70,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadius),
            color: Colors.blueGrey.withOpacity(0.07)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  color: mainColor,
                ),
                Text(
                  text,
                  style: GoogleFonts.ibmPlexSansArabic(
                    textStyle: Styles.style16.copyWith(color: mainColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
