import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/News/data/news_model.dart';
import 'package:qrduation_project/features/News/ui/Widegts/custom_icon_row.dart';
import 'package:qrduation_project/features/News/ui/news_web_view.dart';

class CustomNewsCard extends StatelessWidget {
  const CustomNewsCard({
    super.key,
    required this.articalModel,
  });
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('ali');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return NewsWebView(
                url: articalModel.url,
              );
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
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  articalModel.image!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  scale: 1,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                articalModel.title,
                style: Styles.style16.copyWith(color: mainColor),
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10.h,
              ),
              const IconRow(),
            ],
          ),
        ),
      ),
    );
  }
}
