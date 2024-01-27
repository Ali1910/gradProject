import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/features/Login/presentation/manager/cubit/LoginCubit.dart';
import 'package:qrduation_project/features/Login/presentation/manager/cubit/loginstates.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomEmailTextFormFeild.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomTextButton.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomelevatedbuttonButton.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomLoginContainer.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustompasswordTextFormFeild.dart';
import 'package:qrduation_project/features/home/presentation/views/Home_page.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Logincubit, LoginStates>(
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<Logincubit>(context).formkey,
          autovalidateMode:
              BlocProvider.of<Logincubit>(context).autovalidateMode,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                children: [
                  const CustomloginContainer(
                    text: 'تسجيل الدخول',
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  CustomEmailTextFormFeild(
                    onChanged: (x) {
                      BlocProvider.of<Logincubit>(context)
                          .onEmailfeildchanged(x);
                    },
                    onSaved: (x) {
                      BlocProvider.of<Logincubit>(context)
                          .onEmailfeildchanged(x!);
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomPasswordTextFormFeild(
                    onChanged: (p0) {
                      BlocProvider.of<Logincubit>(context)
                          .onPasswordfeildchanged(p0);
                    },
                    onSaved: (p0) {
                      BlocProvider.of<Logincubit>(context)
                          .onPasswordfeildsaved(p0);
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Customelevatedbutton(
                      text: 'تسجيل الدخول',
                      onPressed: () {
                        if (BlocProvider.of<Logincubit>(context)
                            .formkey
                            .currentState!
                            .validate()) {
                          if (BlocProvider.of<Logincubit>(context).login(
                              BlocProvider.of<Logincubit>(context).email,
                              BlocProvider.of<Logincubit>(context).password)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    duration: Duration(seconds: 1),
                                    content: Text('login successfully')));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomePage();
                                },
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    duration: Duration(seconds: 1),
                                    content: Text(
                                        'login falid wrong email or password please try again')));
                          }
                        } else {
                          BlocProvider.of<Logincubit>(context)
                              .autovalidateMode = AutovalidateMode.always;
                        }
                        ;
                      }),
                  const CustomTextButton()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
