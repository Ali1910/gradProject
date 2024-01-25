import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/features/Login/presentation/manager/cubit/LoginCubit.dart';
import 'package:qrduation_project/features/Login/presentation/manager/cubit/loginstates.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomEmailTextFormFeild.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomTextButton.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomelevatedbuttonButton.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomLoginContainer.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustompasswordTextFormFeild.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: BlocProvider.of<Logincubit>(context).formkey,
      autovalidateMode: BlocProvider.of<Logincubit>(context).autovalidateMode,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: BlocBuilder<Logincubit, LoginStates>(
            builder: (context, state) {
              return Column(
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
                          print(BlocProvider.of<Logincubit>(context).email);
                          print(BlocProvider.of<Logincubit>(context).password);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return const HomePage();
                          //     },
                          //   ),
                          // );
                        } else {
                          BlocProvider.of<Logincubit>(context)
                              .autovalidateMode = AutovalidateMode.always;
                        }
                        ;
                      }),
                  const CustomTextButton()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
