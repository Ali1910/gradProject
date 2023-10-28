import 'package:flutter/material.dart';
import 'package:qrduation_project/features/MedicationContent/widgets/drugs_name_listview.dart';
import 'package:qrduation_project/features/MedicationContent/widgets/search_view.dart';

class DrugContentView extends StatelessWidget {
  const DrugContentView({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: TextFormField(
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
                fillColor: Colors.black,
                contentPadding: const EdgeInsets.all(8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                hintText: 'البحث عن دواء',
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
          ),
        ),
        body: const DrugsNameListview(),
      ),
    );
  }
}
