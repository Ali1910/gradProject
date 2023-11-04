import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/core/cubits/bottomnavigationbarcubit/Bottomnavigationbarcubit.dart';
import 'package:qrduation_project/features/ListOfDocotrs/test.dart';
import 'package:qrduation_project/features/home/presentation/views/Home_page.dart';
import 'package:qrduation_project/features/list%20of%20doc/BookingView.dart';
import 'package:qrduation_project/test.dart';
import 'package:qrduation_project/features/list%20of%20doc/datecustom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavagationbarCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const BookingView(),
      ),
    );
  }
}
