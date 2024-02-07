import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qrduation_project/core/cubits/bottomnavigationbarcubit/Bottomnavigationbarcubit.dart';
import 'package:qrduation_project/features/BMI/presenatation/manager/BMICubit.dart';
import 'package:qrduation_project/features/News/logic/news_cubit.dart';
import 'package:qrduation_project/features/Registeration/presentation/Manager/RegisterationCubit.dart';
import 'package:qrduation_project/features/home/presentation/views/Home_page.dart';

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
        BlocProvider(
          create: (context) => NewsCubit(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: const HomePage(),
        ),
      ),
    );
  }
}
