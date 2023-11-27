import 'package:flutter/material.dart';

void main() {
  runApp(const Rating());
}

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          ),
          body: Column(children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'اختر تقييمك',
                  style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     RatingBar.builder(
            //       initialRating: 3,
            //       minRating: 1,
            //       direction: Axis.horizontal,
            //       allowHalfRating: true,
            //       itemCount: 5,
            //       itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            //       itemBuilder: (context, _) => Icon(
            //         Icons.star,
            //         color: Colors.lightBlueAccent,
            //       ),
            //       onRatingUpdate: (rating) {
            //         print(rating);
            //       },
            //     ),
            //   ],
            // ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' اكتب تعليقا على تجربتك',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(8),
                    backgroundColor: Colors.blueAccent,
                    minimumSize: const Size(130, 70),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'حفظ',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 2),
          ]),
        ));
  }
}
