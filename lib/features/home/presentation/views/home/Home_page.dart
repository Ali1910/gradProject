import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/core/cubits/bottomnavigationbarcubit/Bottomnavigationbarcubit.dart';
import 'package:qrduation_project/core/cubits/bottomnavigationbarcubit/Bottomnavigationvarstates.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/home/presentation/views/home/widgets/CustomBottomNavigationBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: mainColor,
                ),
              ),
            ],
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'صحي',
              style: Styles.styleBold24.copyWith(color: mainColor),
            ),
          ),
          body: BlocBuilder<NavagationbarCubit, BottomNavigationBarStates>(
            builder: (context, state) {
              var myblocprovider = BlocProvider.of<NavagationbarCubit>(context);
              return myblocprovider
                  .bottomnavigationbarviews[myblocprovider.currentIndex];
            },
          ),
          bottomNavigationBar: const CustomBottomNavBar(),
        ),
      ),
    );
  }
}
