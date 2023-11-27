import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/DoctorViewBooking/BookingView.dart';

class CustomDoctorContainer extends StatelessWidget {
  const CustomDoctorContainer(
      {super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05),
      child: Card(
        shadowColor: Colors.white,
        elevation: 2,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 16.0),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: mainColor,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'دكتور علي هاني علي ',
                          style: Styles.styleBold16.copyWith(color: mainColor),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Text(
                            'جامعة المنصورة',
                            style: Styles.style13.copyWith(
                              color: mainColor,
                            ),
                          ),
                        ),
                        Text(
                          'المواعيد :9:00 صباحا : 2:00 مساء',
                          style: Styles.style16.copyWith(color: mainColor),
                        ),
                        Text(
                          'قيمة الحجز:150',
                          style: Styles.styleBold16.copyWith(color: mainColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                ),
                onPressed: onPressed,
                child: Text(
                  text,
                  style: Styles.style16.copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
