import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/features/Login/presentation/manager/cubit/loginstates.dart';

class Logincubit extends Cubit<LoginStates> {
  Logincubit() : super(LoginInitialstate());

  late String email;
  late String password;
  bool isobscure = true;
  AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction;
  final GlobalKey<FormState> formkey = GlobalKey();
  void showpassword() {
    isobscure = !isobscure;
    emit(ObscureChangedstate());
  }

  void onEmailfeildchanged(String x) {
    email = x;
  }

  void onEmialfeildsaved(String x) {
    email = x;
  }

  void onPasswordfeildchanged(String x) {
    password = x;
    emit(LoginChangedstate());
  }

  void onPasswordfeildsaved(String? x) {
    password = x!;
  }

  bool validateCpatialStructure(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
