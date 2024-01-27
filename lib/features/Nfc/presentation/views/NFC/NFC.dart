import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class NfcViewbody extends StatelessWidget {
  const NfcViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 300,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Center(
                        //   child: Text(
                        //     'جاهز لقراءة الكارت ',
                        //     style:
                        //         Styles.styleBold16.copyWith(color: mainColor),
                        //   ),
                        // ),
                        Image.asset(
                          'assets/images/NFC.jpg',
                          width: 100,
                          height: 100,
                        ),
                        Center(
                          child: Text(
                            'مرر البطاقة لاجراء عملية المسح',
                            style:
                                Styles.styleBold16.copyWith(color: mainColor),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              showBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      width: double.infinity,
                                      height: 240,
                                      child: Center(
                                        child: Text(
                                          'يتم الفحص',
                                          style: Styles.styleBold24
                                              .copyWith(color: mainColor),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: mainColor,
                            ),
                            child: Text(
                              'ابدء',
                              style: Styles.styleBold16
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
