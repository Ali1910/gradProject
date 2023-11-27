import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/features/ListOfDocotrs_appointment/BuildSpecialtiesList.dart';
import 'package:qrduation_project/features/ListOfDocotrs_appointment/specilaityCustomContainer.dart';

class specialityView extends StatelessWidget {
  const specialityView({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              const CustomTextFormFeild(),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return SpeciliatyContainer(
                      text: specialityText[index],
                      widget: widget,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      color: Colors.blueGrey,
                    );
                  },
                  itemCount: specialityText.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        onSaved: (p) {},
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(5),
          ),
          fillColor: kCountainersColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          hintText: 'بحث في التخصصات',
          hintStyle: TextStyle(color: mainColor),
          prefixIcon: Icon(
            FontAwesomeIcons.searchengin,
            color: mainColor,
          ),
          isDense: true,
        ),
      ),
    );
  }
}
