import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/features/Login/Data/Fakedata.dart';
import 'package:qrduation_project/features/Login/presentation/manager/cubit/loginstates.dart';

class Logincubit extends Cubit<LoginStates> {
  Logincubit() : super(LoginInitialstate());

  late String email;
  late String password;
  bool isobscure = true;
  bool loginsuccess = false;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formkey = GlobalKey();
  void showpassword() {
    isobscure = !isobscure;
    emit(ObscureChangedstate());
  }

  void onEmailfeildchanged(String x) {
    email = x;
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    emit(LoginChangedstate());
  }

  void onEmialfeildsaved(String x) {
    email = x;
  }

  void onPasswordfeildchanged(String x) {
    password = x;
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    emit(LoginChangedstate());
  }

  void onPasswordfeildsaved(String? x) {
    password = x!;
  }

  bool login(String Email, String Password) {
    for (var Elment in users['login']!) {
      if (Email == Elment['email'] && Password == Elment['password']) {
        loginsuccess = true;
      }
    }
    return loginsuccess;
  }
}
