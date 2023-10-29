import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/features/News/presentation/views/News/Widegts/CustomNewsCard.dart';
import 'package:qrduation_project/features/News/presentation/views/News/Widegts/CustomSearchTextFormFeild.dart';
import 'package:qrduation_project/features/News/presentation/views/News/search_result.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: mainColor),
          title: CustomSearchTextFeild(
            onSubmitted: (p) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchResult();
                  },
                ),
              );
            },
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const CustomNewsCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
