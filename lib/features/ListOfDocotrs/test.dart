import 'package:flutter/material.dart';
import 'package:qrduation_project/features/ListOfDocotrs/listview.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'اختيار طبيب',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row(
              children: [
                const Expanded(
                  child: InputDecorator(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      prefixIcon: Icon(Icons.search),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: TextField(),
                    ),
                  ),
                ),
                const Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.blue,
                ),
                IconButton(
                  icon: Icon(Icons.location_city),
                  onPressed: () {
                    _showBottomSheet(context, 'مناطق');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.medical_services),
                  onPressed: () {
                    _showBottomSheet(context, 'تخصصات');
                  },
                )
              ],
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  'أفضل الأطباء',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      // إجراء عند النقر على أيقونة المزيد
                    },
                    icon: const Icon(Icons.more_horiz), // رمز أيقونة المزيد
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: doctors.length,
              itemBuilder: (BuildContext context, index) {
                return _buildDoctorCard(doctors[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Future _showBottomSheet(BuildContext context, String type) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          if (type == 'مناطق') {
            return _buildAreasList();
          } else {
            return _buildSpecialtiesList();
          }
        });
  }

  Widget _buildAreasList() {
    return Container(
      child: ListView(
        children: [
          ListTile(title: Text('القاهرة')),
          ListTile(title: Text('الإسكندرية')),
          ListTile(title: Text('الدقهلية')),
          ListTile(title: Text('الغربية')),
        ],
      ),
    );
  }

  Widget _buildSpecialtiesList() {
    return Container(
      child: ListView(
        children: [
          ListTile(title: Text('طب عام')),
          ListTile(title: Text('أطفال')),
          ListTile(title: Text('أسنان')),
          ListTile(title: Text('عظام')),
        ],
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
