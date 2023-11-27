import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/DoctorViewBooking/BookingView.dart';
import 'package:qrduation_project/features/ListOfDocotrs_appointment/BuildSpecialtiesList.dart';
import 'package:qrduation_project/features/ListOfDocotrs_appointment/DoctorContainer.dart';
import 'package:qrduation_project/features/ListOfDocotrs_appointment/Speciality_screen.dart';

class ListOfDoctor extends StatelessWidget {
  const ListOfDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return ListView.separated(
                            itemBuilder: (context, index) {
                              return Directionality(
                                textDirection: TextDirection.rtl,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      top: 16, start: 8),
                                  child: Text(
                                    city[index],
                                    style: Styles.styleBold16
                                        .copyWith(color: mainColor),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                color: mainColor,
                              );
                            },
                            itemCount: city.length);
                      });
                },
                icon: const Icon(FontAwesomeIcons.filter),
              ),
            ],
            elevation: 0,
            title: Text(
              'اختيار طبيب',
              style: Styles.styleBold24,
            ),
            iconTheme: IconThemeData(color: mainColor),
            centerTitle: true,
          ),
          body: Column(
            children: [
              const CustomTextFormFeild(),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return CustomDoctorContainer(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const BookingView();
                              },
                            ),
                          );
                        },
                        text: 'احجز',
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 15,
                      );
                    },
                    itemCount: 10),
              ),
            ],
          )),
    );
  }
}
