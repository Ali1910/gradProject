import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/features/News/ui/Widegts/custom_search_textFormFeild.dart';

class NewsLoadingBody extends StatelessWidget {
  const NewsLoadingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: mainColor),
        title: CustomSearchTextFeild(
          onSubmitted: (p) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return const SearchResult();
            //     },
            //   ),
            // );
          },
        ),
      ),
      body: Center(
        child: CircularProgressIndicator(
          color: mainColor,
        ),
      ),
    );
  }
}
