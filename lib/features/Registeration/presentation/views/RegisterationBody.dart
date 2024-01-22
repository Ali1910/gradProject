import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/ListOfDocotrs_appointment/BuildSpecialtiesList.dart';
import 'package:qrduation_project/features/Login/presentation/manager/BorderStyle.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomEmailTextFormFeild.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomelevatedbuttonButton.dart';
import 'package:qrduation_project/features/Registeration/Data/ListOfCities.dart';

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
          ),
          const CustomTextFormFeildRegisteration(
            label: 'تاكيد كلمة السر',
            hint: 'تاكيد كلمة السر هنا',
            width: 1,
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
          const Customelevatedbutton(text: 'تسجيل')
        ],
      ),
    );
  }
}

class CustomCityPicker extends StatelessWidget {
  const CustomCityPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const CustomCityPickerListview();
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: mainColor),
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.only(bottom: 15),
        width: MediaQuery.of(context).size.width,
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'اختر ميدنتك',
              style: Styles.style16.copyWith(color: mainColor),
            ),
            Icon(
              FontAwesomeIcons.locationDot,
              size: 24,
              color: mainColor,
            )
          ],
        ),
      ),
    );
  }
}

class CustomCityPickerListview extends StatelessWidget {
  const CustomCityPickerListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
                child: Text(
                  cities[index],
                  style: Styles.style16.copyWith(color: mainColor),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: mainColor,
              thickness: 0.5,
            );
          },
          itemCount: cities.length),
    );
  }
}

class CustomDatepicker extends StatelessWidget {
  const CustomDatepicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: mainColor),
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.only(bottom: 15),
        width: MediaQuery.of(context).size.width * 0.43,
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'اختار تاريخ ميلادك',
              style: Styles.style16.copyWith(color: mainColor),
            ),
            Icon(
              Icons.calendar_today,
              size: 24,
              color: mainColor,
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextFormRow extends StatelessWidget {
  const CustomTextFormRow({
    super.key,
    required this.label1,
    required this.hint1,
    required this.label2,
    required this.hint2,
    required this.width,
  });
  final String label1;
  final String hint1;
  final String label2;
  final String hint2;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextFormFeildRegisteration(
          label: label1,
          hint: hint1,
          width: width,
        ),
        CustomTextFormFeildRegisteration(
          label: label2,
          hint: hint2,
          width: width,
        ),
      ],
    );
  }
}

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.value,
    required this.itemslist,
    required this.onChanged,
  });
  final String value;
  final List itemslist;
  final void Function(Object?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: mainColor),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.only(bottom: 15),
      width: MediaQuery.of(context).size.width * 0.43,
      child: DropdownButton(
        isExpanded: true,
        iconSize: 24,
        underline: const SizedBox(),
        iconEnabledColor: mainColor,
        hint: const Text('........ادخل نوعك......'),
        value: value,
        items: itemslist.map((e) {
          return DropdownMenuItem(
            alignment: AlignmentDirectional.centerStart,
            value: e,
            child: Text(
              e,
              style: Styles.style16.copyWith(color: mainColor),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}

class CustomTextFormFeildRegisteration extends StatelessWidget {
  const CustomTextFormFeildRegisteration({
    super.key,
    this.validator,
    this.onChanged,
    required this.label,
    required this.hint,
    required this.width,
  });
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String label;
  final String hint;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * width,
        child: TextFormField(
          onChanged: (p) {},
          validator: validator,
          maxLines: 1,
          cursorColor: Colors.black,
          decoration: InputDecoration(
              labelStyle: Styles.style16.copyWith(color: mainColor),
              labelText: label,
              prefixIconColor: mainColor,
              hintText: hint,
              hintStyle: Styles.style16.copyWith(color: mainColor),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              enabledBorder: borderstyle(color: mainColor),
              focusedBorder: borderstyle(color: mainColor.withOpacity(0.7))),
        ),
      ),
    );
  }
}
