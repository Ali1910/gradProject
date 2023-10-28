import 'package:flutter/material.dart';
import 'package:qrduation_project/features/MedicationContent/widgets/drugsCountainer.dart';

class DrugsNameListview extends StatelessWidget {
  const DrugsNameListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: ListView.separated(
        itemCount: 26,
        itemBuilder: (context, index) {
          return DrugContainer(
              drugName: 'تيمودال', letter: englishLetters[index]);
        },
        separatorBuilder: (context, index) {
          return Divider(
            endIndent: 50,
            color: Colors.blueGrey.withOpacity(0.6),
            thickness: 1,
          );
        },
      ),
    );
  }
}

final List<String> englishLetters = List.generate(26, (index) {
  return String.fromCharCode(index + 65);
});
