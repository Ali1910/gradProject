import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomelevatedbuttonButton.dart';
import 'package:qrduation_project/features/Registeration/Data/ListOfCities.dart';
import 'package:qrduation_project/features/Registeration/presentation/Manager/RegisterationCubit.dart';
import 'package:qrduation_project/features/Registeration/presentation/Manager/RegisterationStates.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomCityPicker.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomDatepicker.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomDropDownMenu.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomRegisterationFormFeild.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/Widgets/CustomTextFormFeildRow.dart';
import 'package:qrduation_project/features/home/presentation/views/Home_page.dart';

class RegisterationBodyView extends StatelessWidget {
  const RegisterationBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    var of = BlocProvider.of<RegisterationCubit>(context);
    return BlocBuilder<RegisterationCubit, Registerationstates>(
      builder: (context, state) {
        return Form(
          key: of.formkey,
          autovalidateMode: of.autovalidateMode,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 5,
                ),
                CustomTextFormRow(
                  label1: 'الاسم الاول',
                  label2: 'الاسم الثاني',
                  hint1: 'ادخل الاسم الاول هنا',
                  hint2: 'ادخل الاسم الثاني هنا',
                  width: 0.43,
                  onChanged1: (p0) {
                    of.validationchage();
                    of.firstName = p0;
                  },
                  onFieldSubmitted1: (p0) {
                    of.firstName = p0;
                  },
                  onChanged2: (p0) {
                    of.validationchage();
                    of.secondName = p0;
                  },
                  onFieldSubmitted2: (p0) {
                    of.secondName = p0;
                  },
                  validator1: (p) {
                    if (p?.isEmpty ?? true) {
                      return 'مطلوب لا يمكن ان يكون فارغا';
                    } else if (of.validateNameStructure(p!)) {
                      return 'لا يمكن ان يحتوي على ارقام';
                    } else if (p!.length < 3) {
                      return 'لا يمكن ان يكون أقل من ثلاث أحرف';
                    }
                  },
                  validator2: (p) {
                    if (p?.isEmpty ?? true) {
                      return 'مطلوب لا يمكن ان يكون فارغا';
                    } else if (of.validateNameStructure(p!)) {
                      return 'لا يمكن ان يحتوي على ارقام';
                    } else if (p.length < 3) {
                      return 'لا يمكن ان يكون أقل من ثلاث أحرف';
                    }
                  },
                ),
                CustomTextFormRow(
                  label1: 'البريد الالكتروني',
                  label2: 'رقم هاتفك',
                  hint1: 'ادخل البريد الالكتروني هنا',
                  hint2: 'ادخل رقم هاتفك هنا',
                  width: 0.43,
                  onChanged1: (p0) {
                    of.validationchage();
                    of.email = p0;
                  },
                  onFieldSubmitted1: (p0) {
                    of.email = p0;
                  },
                  onChanged2: (p0) {
                    of.validationchage();
                    of.phoneNumber = p0;
                  },
                  onFieldSubmitted2: (p0) {
                    of.phoneNumber = p0;
                  },
                  validator1: (p) {
                    if (p?.isEmpty ?? true) {
                      return 'مطلوب لا يمكن ان يكون فارغا';
                    } else if (!p!.contains('@gmail.com')) {
                      return '  ادخل صيغة ايميل صحيحة';
                    }
                  },
                  validator2: (p) {
                    if (p?.isEmpty ?? true) {
                      return 'لا يمكن ان يكون فارغا';
                    } else if (!of.validateNUmberStructure(p!)) {
                      return 'لا يمكن ان يحتوي على أحرف';
                    } else if (p.length < 11) {
                      return ' لا يمكن ان يكون اقل من 11 رقم';
                    }
                  },
                ),
                CustomTextFormFeildRegisteration(
                  label: 'ادخل كلمة السر',
                  hint: 'ادخل كلمة السر هنا',
                  width: 1,
                  onChanged: (p0) {
                    of.validationchage();
                    of.password = p0;
                  },
                  onFieldSubmitted: (p0) {
                    of.password = p0;
                  },
                  validator: (p) {
                    if (p?.isEmpty ?? true) {
                      return 'هذا الحقل مطلوب لا يمكن ان يكون فارغا';
                    } else if (!of.validatePasswordStructure(p!)) {
                      return 'ادخل كلمة سر مناسبة';
                    }
                  },
                ),
                CustomTextFormFeildRegisteration(
                  label: 'تاكيد كلمة السر',
                  hint: 'تاكيد كلمة السر هنا',
                  width: 1,
                  onChanged: (p0) {
                    of.validationchage();
                    of.passwordconfirmation = p0;
                  },
                  onFieldSubmitted: (p0) {
                    of.passwordconfirmation = p0;
                  },
                  validator: (p) {
                    if (p?.isEmpty ?? true) {
                      return 'هذا الحقل مطلوب لا يمكن ان يكون فارغا';
                    } else if (of.password != of.passwordconfirmation) {
                      return 'كلمة السر خاطئة';
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomDropDownButton(
                      value: of.dropDownMenuValue,
                      itemslist: gender,
                      onChanged: (p) {
                        of.dropdownmenuvaluechanged(p);
                      },
                    ),
                    const CustomDatepicker()
                  ],
                ),
                const CustomCityPicker(),
                const SizedBox(height: 20),
                Customelevatedbutton(
                  text: 'تسجيل',
                  onPressed: () {
                    if (of.formkey.currentState!.validate() &&
                        of.datepicked &&
                        of.genderpicked) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomePage();
                          },
                        ),
                      );
                    } else {
                      of.autovalidateMode = AutovalidateMode.always;
                    }
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
