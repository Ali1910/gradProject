import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/News/presentation/views/News/Widegts/CustomIconRow.dart';
import 'package:qrduation_project/features/News/presentation/views/News/details.dart';

class CustomNewsCard extends StatelessWidget {
  const CustomNewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        subtitle: const IconRow(),
        title: SizedBox(
          height: 100,
          child: Text(
            'نبذة عن الخبر',
            style: Styles.style20.copyWith(color: mainColor),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const DetailsPage();
              },
            ),
          );
        },
      ),
    );
  }
}
