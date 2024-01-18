import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomEmailTextFormFeild.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomLoginButton.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomLoginContainer.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustompasswordTextFormFeild.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: const Column(
          children: [
            CustomloginContainer(
              text: 'تسجيل الدخول',
            ),
            SizedBox(
              height: 75,
            ),
            CustomEmailTextFormFeild(),
            SizedBox(
              height: 25,
            ),
            CustomPasswordTextFormFeild(),
            SizedBox(
              height: 25,
            ),
            CustomLoginButton(),
            CustomTextButton()
          ],
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تملك حساب ؟',
          style: Styles.style16,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'انشاء حساب',
              style:
                  Styles.styleBold16.copyWith(color: mainColor, fontSize: 13),
            ))
      ],
    );
  }
}
