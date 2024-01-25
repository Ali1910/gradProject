import 'package:flutter/material.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomelevatedbuttonButton.dart';
import 'package:qrduation_project/features/Registeration/Data/ListOfCities.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomCityPicker.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomDatepicker.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomDropDownMenu.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomRegisterationFormFeild.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomTextFormFeildRow.dart';
import 'package:qrduation_project/features/home/presentation/views/Home_page.dart';

class RegisterationBodyView extends StatelessWidget {
  const RegisterationBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 5,
          ),
          const CustomTextFormRow(
            label1: 'الاسم الاول',
            label2: 'الاسم الثاني',
            hint1: 'ادخل الاسم الاول هنا',
            hint2: 'ادخل الاسم الثاني هنا',
            width: 0.43,
          ),
          const CustomTextFormRow(
            label1: 'البريد الالكتروني',
            label2: 'رقم هاتفك',
            hint1: 'ادخل البريد الالكتروني هنا',
            hint2: 'ادخل رقم هاتفك هنا',
            width: 0.43,
          ),
          const CustomTextFormFeildRegisteration(
            label: 'ادخل كلمة السر',
            hint: 'ادخل كلمة السر هنا',
            width: 1,
            autovalidateMode: AutovalidateMode.always,
          ),
          const CustomTextFormFeildRegisteration(
            label: 'تاكيد كلمة السر',
            hint: 'تاكيد كلمة السر هنا',
            width: 1,
            autovalidateMode: AutovalidateMode.always,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomDropDownButton(
                value: gender[0],
                itemslist: gender,
                onChanged: (p) {},
              ),
              const CustomDatepicker()
            ],
          ),
          const CustomCityPicker(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Customelevatedbutton(
            text: 'تسجيل',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
