import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class Custombody extends StatelessWidget {
  const Custombody({
    super.key,
    required this.text,
    required this.widget,
  });
  final String text;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return widget;
          }));
        },
        child: Container(
          // width: 100,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.07),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                text,
                maxLines: 1,
                style: Styles.style16.copyWith(color: mainColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
