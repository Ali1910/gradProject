import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/questionandanswer/presentation/views/questionsAnswer/questionPageTwo.dart';

import 'answerDoctor.dart';

class QuestionsAnswersbdoyview extends StatelessWidget {
  const QuestionsAnswersbdoyview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Container(
            height: 180,
            width: 350,
            decoration: BoxDecoration(
              color: const Color(0xfff1f5f8),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Text(
                    ' احصل على إجابة لسؤالك',
                    style: Styles.style24,
                  ),
                  Text(
                    'نخبة من الأطباء المتخصصين',
                    style: Styles.style24,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const MyQuestion();
                      }));
                    },
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text('أدخل سؤالك الأن',
                            style: GoogleFonts.ibmPlexSansArabic(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 19),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainColor),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  contentPadding: const EdgeInsets.only(
                      left: 15, bottom: 11, top: 11, right: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: ' البحث في الأسئلة والأجوبة  ',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(Icons.manage_search),
                  prefixIconColor: mainColor),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(
                        child: Text(
                          'أسئلتي',
                          style: Styles.styleBold16.copyWith(color: mainColor),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'جميع الأسئلة',
                          style: Styles.styleBold16.copyWith(color: mainColor),
                        ),
                      ),
                    ],
                  ),
                  // const Expanded(
                  //   child: TabBarView(
                  //     children: [],
                  //   ),
                  // ),
                ],
              )),
          const SizedBox(
            height: 15,
          ),
          const QuestionList(),
        ],
      ),
    );
  }
}

class QuestionList extends StatelessWidget {
  const QuestionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.blueGrey.withOpacity(0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('  سؤال من : ',
                    style: Styles.styleBold16.copyWith(color: mainColor)),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  ' عندي صداع دائما',
                  style: Styles.styleBold16.copyWith(color: mainColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  color: mainColor,
                  height: 1,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const AnswerDoctor();
                              },
                            ),
                          );
                        },
                        child: Text(
                          '< إجابة الطبيب ',
                          style: GoogleFonts.ibmPlexSansArabic(
                              color: mainColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'أجاب على السؤال',
                            style: GoogleFonts.ibmPlexSansArabic(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            ' د/ مصطفى محمود',
                            style: GoogleFonts.ibmPlexSansArabic(
                                color: mainColor, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'منذ ٥ ساعات',
                            style: GoogleFonts.ibmPlexSansArabic(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.account_circle,
                        size: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
