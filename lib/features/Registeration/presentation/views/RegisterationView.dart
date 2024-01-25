import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/Login/presentation/manager/cubit/LoginCubit.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/RegisterationBody.dart';

class RegisterationView extends StatelessWidget {
  const RegisterationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'انشاء حساب',
            style: Styles.styleBold24.copyWith(color: mainColor),
          ),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: RegisterationBodyView(),
        ),
      ),
    );
  }
}
