import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/features/Login/presentation/manager/cubit/LoginCubit.dart';
import 'package:qrduation_project/features/Login/presentation/views/loginBodyView.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Logincubit(),
      child: const Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            body: LoginViewBody(),
          ),
        ),
      ),
    );
  }
}
