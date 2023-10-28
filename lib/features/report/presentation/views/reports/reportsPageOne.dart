import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class ReportsBodyview extends StatelessWidget {
  const ReportsBodyview({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.push(context, MaterialPageRoute(builder: (context) {
        //       return const ReportsPageAdd();
        //     }));
        //   },
        //   backgroundColor: mainColor,
        //   child: const Icon(
        //     Icons.add,
        //   ),
        // ),

        ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return ReportsList();
      },
    );
  }

  Padding ReportsList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                'https://images.rawpixel.com/image_1000/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA5L2stczE2LWljZS0zMzU0LWx5ajIwNTQtMDQtbWVkaWNhbHJlcG9ydC5qcGc.jpg',
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Text('21/10/2023',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.style20.copyWith(color: mainColor)),
          const SizedBox(
            height: 8,
          ),
          Text(
            'التفاصيل',
            maxLines: 2,
            style: Styles.styleBold16.copyWith(color: mainColor),
          )
        ],
      ),
    );
  }
}
