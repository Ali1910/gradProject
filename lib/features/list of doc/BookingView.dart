import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/list%20of%20doc/TimePickerContainer.dart';
import 'package:qrduation_project/features/list%20of%20doc/datecustom.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: ShapeDecoration(
                    color: mainColor.withOpacity(0.5),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ),
                  child: Transform.translate(
                    offset: Offset(0, MediaQuery.of(context).size.height * 0.1),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 300,
                        height: 80,
                        decoration: ShapeDecoration(
                          color: mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(' دكتور : ',
                            style: Styles.styleBold24
                                .copyWith(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'قيمة الحجز',
                        style: Styles.style20.copyWith(
                          color: mainColor,
                        ),
                      ),
                      Text('معلومات عن الطبيب',
                          style: Styles.style20.copyWith(color: mainColor)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      ' المواعيد ',
                      style: Styles.style20.copyWith(color: mainColor),
                    ),
                  ),
                ),
                Datepicker(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      ' الأوقات المتاحة ',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return TimePickerContatiner(
                        color: ccolors[index],
                        textcolor: tcolors[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10);
                    },
                    itemCount: 5,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    elevation: 1,
                    fixedSize: const Size(150, 50),
                  ),
                  onPressed: () {},
                  child: Text(
                    'احجز',
                    style: Styles.style20.copyWith(color: Colors.white),
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
