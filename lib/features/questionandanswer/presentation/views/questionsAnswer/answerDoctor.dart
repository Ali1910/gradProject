import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qrduation_project/core/utilts/constans.dart';

class AnswerDoctor extends StatelessWidget {
  const AnswerDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: mainColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'إجابة الطبيب ',
                  style: GoogleFonts.ibmPlexSansArabic(),
                ),
              ],
            ),
          ),
        ));
  }
}
