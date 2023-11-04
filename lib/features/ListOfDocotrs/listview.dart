import 'package:flutter/material.dart';

class Doctor {
  final String image, name, specialty, timing, address;

  Doctor({
    required this.image,
    required this.name,
    required this.specialty,
    required this.timing,
    required this.address,
  });
}

final doctors = [
  Doctor(
    image: 'images/doctor1.jpg',
    name: 'دكتور محمد',
    specialty: 'جراحة عظام',
    timing: '10 AM - 3 PM',
    address: '123 Main St, New York, NY',
  ),
  Doctor(
    image: 'images/doctor2.jpg',
    name: 'دكتورة سلمى',
    specialty: 'طبيبة أمراض الكلى',
    timing: '9 AM - 5 PM',
    address: '456 Park Ave, New York, NY',
  ),
  Doctor(
    image: 'images/doctor1.jpg',
    name: 'دكتور محمد',
    specialty: 'جراحة عظام',
    timing: '10 AM - 3 PM',
    address: '123 Main St, New York, NY',
  ),
  Doctor(
    image: 'images/doctor2.jpg',
    name: 'دكتورة سلمى',
    specialty: 'طبيبة أمراض الكلى',
    timing: '9 AM - 5 PM',
    address: '456 Park Ave, New York, NY',
  ),
  Doctor(
    image: 'images/doctor1.jpg',
    name: 'دكتور محمد',
    specialty: 'جراحة عظام',
    timing: '10 AM - 3 PM',
    address: '123 Main St, New York, NY',
  ),
  Doctor(
    image: 'images/doctor2.jpg',
    name: 'دكتورة سلمى',
    specialty: 'طبيبة أمراض الكلى',
    timing: '9 AM - 5 PM',
    address: '456 Park Ave, New York, NY',
  ),
  Doctor(
    image: 'images/doctor1.jpg',
    name: 'دكتور محمد',
    specialty: 'جراحة عظام',
    timing: '10 AM - 3 PM',
    address: '123 Main St, New York, NY',
  ),
  Doctor(
    image: 'images/doctor2.jpg',
    name: 'دكتورة سلمى',
    specialty: 'طبيبة أمراض الكلى',
    timing: '9 AM - 5 PM',
    address: '456 Park Ave, New York, NY',
  ),
  Doctor(
    image: 'images/doctor1.jpg',
    name: 'دكتور محمد',
    specialty: 'جراحة عظام',
    timing: '10 AM - 3 PM',
    address: '123 Main St, New York, NY',
  ),
  Doctor(
    image: 'images/doctor2.jpg',
    name: 'دكتورة سلمى',
    specialty: 'طبيبة أمراض الكلى',
    timing: '9 AM - 5 PM',
    address: '456 Park Ave, New York, NY',
  ),
];

class MyDoctorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (BuildContext context, index) {
          return _buildDoctorCard(doctors[index]);
        },
      ),
    );
  }
}

Widget _buildDoctorCard(Doctor doctor) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 19.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(doctor.image),
              radius: 40,
            ),
          ),
          const SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctor.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(doctor.specialty),
              Text(doctor.timing),
              Text(doctor.address),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: ElevatedButton(
              onPressed: () {
                // إجراء عند النقر على زر الحجز للطبيب
              },
              child: const Text('حجز'),
            ),
          ),
        ],
      ),
    ),
  );
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyDoctorsPage(),
  ));
}
