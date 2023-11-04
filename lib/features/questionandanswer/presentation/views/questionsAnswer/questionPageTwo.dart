import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';

class MyQuestion extends StatelessWidget {
  const MyQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: mainColor),
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
            child: ListView(
              children: [
                Center(
                    child: Text(' اطرح سؤالك على آلاف الأطباء',
                        style: Styles.styleBold24)),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'عنوان السؤال',
                  style: Styles.styleBold24,
                ),
                TextField(
                    style: const TextStyle(fontSize: 15),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'أدخل عنوان السؤال',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'أخبر الطبيب عن الأعراض',
                  style: Styles.styleBold24,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'اشرح الأعراض التي تعاني منها',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.blueAccent,
                            spreadRadius: 0,
                            blurRadius: 2)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(اختياري)',
                        style: Styles.style20.copyWith(color: mainColor),
                      ),
                      Text(
                        ' إرفاق ملف',
                        style: Styles.style20.copyWith(color: mainColor),
                      ),
                      const Icon(Icons.upload)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'JPEG-PNG',
                    style: Styles.style16.copyWith(color: mainColor),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    print('send');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: mainColor,
                    ),
                    child: Center(
                      child: Text(
                        'أرسل',
                        style: Styles.styleBold16.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
