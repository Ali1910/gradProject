import 'package:flutter/material.dart';
import 'package:qrduation_project/features/MedicationContent/widgets/drugs_name_listview.dart';
import 'package:qrduation_project/features/MedicationContent/widgets/search_view.dart';
import 'package:qrduation_project/features/News/presentation/views/News/Widegts/CustomSearchTextFormFeild.dart';

class DrugContentView extends StatelessWidget {
  const DrugContentView({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: CustomSearchTextFeild(
            onSubmitted: (p0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ),
              );
            },
          ),
        ),
        body: const DrugsNameListview(),
      ),
    );
  }
}
