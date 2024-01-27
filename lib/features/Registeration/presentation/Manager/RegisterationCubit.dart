import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/features/Registeration/presentation/Manager/RegisterationStates.dart';

class RegisterationCubit extends Cubit<Registerationstates> {
  String dropDownMenuValue = 'ذكر';
  late String city;
  late String email;
  late String firstName;
  late String secondName;
  late String phoneNumber;
  late String password;
  late String passwordconfirmation;
  bool citypicked = false;
  bool datepicked = false;
  late String dateformatted;
  bool genderpicked = false;
  RegisterationCubit() : super(InitialState());
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formkey = GlobalKey();
  bool validatePasswordStructure(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  bool validateNameStructure(String value) {
    String pattern = r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  bool validateNUmberStructure(String value) {
    String pattern = r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  void validationchage() {
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    emit(ValueChangestate());
  }

  void dropdownmenuvaluechanged(string) {
    dropDownMenuValue = string;
    genderpicked = true;
    emit(MenuItemPicked());
  }

  void citydropdownmenuvaluechanged(string) {
    city = string;
    citypicked = true;
    emit(Citypicked());
  }

  void datepickedfunc(DateTime d) {
    dateformatted = '${d.year} / ${d.month} / ${d.day}';
    datepicked = true;
    emit(DatePicked());
  }
}
