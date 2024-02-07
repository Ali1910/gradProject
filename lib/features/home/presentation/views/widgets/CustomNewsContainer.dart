import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/News/logic/news_cubit.dart';
import 'package:qrduation_project/features/News/ui/news.dart';

class CustomNewsContainer extends StatelessWidget {
  const CustomNewsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const NewsView();
              },
            ),
          );
        },
        child: Container(
          height: 100.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: mainColor),
          child: Center(
            child: Text(
              'الاخبار',
              style: GoogleFonts.ibmPlexSansArabic(
                  textStyle: Styles.style24.copyWith(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
