import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qrduation_project/core/utilts/constans.dart';

class ReportsPageAdd extends StatefulWidget {
  const ReportsPageAdd({super.key});

  @override
  State<ReportsPageAdd> createState() => _ReportsPageAddState();
}

class _ReportsPageAddState extends State<ReportsPageAdd> {
  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2050));
  }

  File? _image;
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: mainColor,
            centerTitle: true,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'أرسل تقريرك الأن',
                      style: GoogleFonts.ibmPlexSansArabic(
                          fontSize: 25, fontWeight: kFontWeight),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    getImage();
                  },
                  child: _image != null
                      ? Image.file(_image!)
                      : Image.network(
                          'https://assets.sanebox.com/assets/icons/illustration-upload-lg-81e40e61f8e0bc9ef362558ab30942eeb679d508592b568f3189dda9a2335102.png',
                          fit: BoxFit.cover,
                        ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: ContainerEdit(
                        text: 'حذف',
                      ),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: ContainerEdit(
                          text: 'تعديل',
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'تفاصيل وتاريخ التقرير',
                      style: GoogleFonts.ibmPlexSansArabic(
                          fontSize: 25, fontWeight: kFontWeight),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: MaterialButton(
                    onPressed: _showDatePicker,
                    color: mainColor,
                    child: Text(
                      'اختر التاريخ',
                      style: GoogleFonts.ibmPlexSansArabic(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: kFontWeight),
                    ),
                  ),
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
                    hintText: 'اشرح التفاصيل',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                    child: const Center(
                        child: Text(
                      'أرسل',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: kFontWeight),
                    )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
class ContainerEdit extends StatelessWidget {
  ContainerEdit({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 170,
      decoration: BoxDecoration(
          color: mainColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.ibmPlexSansArabic(
              textStyle: const TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: kFontWeight)),
        ),
      ),
    );
  }
}
