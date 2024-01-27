import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/core/cubits/bottomnavigationbarcubit/Bottomnavigationbarcubit.dart';
import 'package:qrduation_project/features/BMI/presenatation/manager/BMICubit.dart';
import 'package:qrduation_project/features/BMI/presenatation/views/BMIView.dart';
import 'package:qrduation_project/features/Login/presentation/views/LoginView.dart';
import 'package:qrduation_project/features/Registeration/presentation/Manager/RegisterationCubit.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/RegisterationView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BMICubit(),
        ),
        BlocProvider(
          create: (context) => RegisterationCubit(),
        ),
        BlocProvider(
          create: (context) => NavagationbarCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const LoginView(),
      ),
    );
  }
}
