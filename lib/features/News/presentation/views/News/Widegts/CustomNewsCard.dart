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
    return GestureDetector(
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
      child: Card(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: mainColor, width: 2),
                          borderRadius: BorderRadius.circular(18)),
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 150,
                      child: Image.asset(
                        'assets/images/news.jpg',
                        fit: BoxFit.fitWidth,
                      )),
                  Text(
                    'علاج كورونا الابدي!!',
                    style: Styles.style20.copyWith(color: mainColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const IconRow(),
            ],
          ),
        ),
      ),
    );
  }
}
