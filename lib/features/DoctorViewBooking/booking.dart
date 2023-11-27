import 'package:flutter/material.dart';
import 'package:qrduation_project/core/services/whatsapp.dart';
import 'package:qrduation_project/features/DoctorViewBooking/rating.dart';

void main() {
  runApp(booking());
}

class booking extends StatelessWidget {
  booking({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 13, top: 45),
                      child: Text(
                        'دكتور محمد',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 110,
                        backgroundImage: NetworkImage(
                            'https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjg2NS10ZWNoaS0xN18xXzIuanBn.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(fontSize: 30),
                    ),
                    onPressed: () {},
                    child: const Text('تفاصيل عن الدكتور'),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Directionality(
                      textDirection: TextDirection
                          .rtl, // Set the text direction to right-to-left
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Text(
                            'تقييم:',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            'قيمة الحجز:',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            'مواعيده:',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            'تاريخ:',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            'الأوقات المتاحة:',
                            style: TextStyle(fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                      backgroundColor: Colors.blueAccent,
                      minimumSize: const Size(100, 50),
                    ),
                    onPressed: () {
                      launchWhatsApp();
                    },
                    child: const Text(
                      'مراسله عبر',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                      backgroundColor: Colors.blueAccent,
                      minimumSize: const Size(100, 50),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'حجز',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                      backgroundColor: Colors.blueAccent,
                      minimumSize: const Size(100, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Rating()),
                      );
                    },
                    child: const Text(
                      'تقييم',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ));
  }
}
