import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/News/presentation/views/News/Widegts/CustomNewsCard.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: mainColor),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'الكلمة المبحوث بها',
            style: Styles.styleBold24.copyWith(color: mainColor),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CustomNewsCard();
          },
        ),
      ),
    );
  }
}
