import 'package:flutter/material.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomEmailTextFormFeild.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomelevatedbuttonButton.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomLoginContainer.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustompasswordTextFormFeild.dart';
import 'package:qrduation_project/features/Registeration/presentation/views/RegisterationView.dart';
import 'package:qrduation_project/features/home/presentation/views/Home_page.dart';

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
        child: Column(
          children: [
            const CustomloginContainer(
              text: 'تسجيل الدخول',
            ),
            const SizedBox(
              height: 75,
            ),
            const CustomEmailTextFormFeild(),
            const SizedBox(
              height: 25,
            ),
            const CustomPasswordTextFormFeild(),
            const SizedBox(
              height: 25,
            ),
            Customelevatedbutton(
              text: 'تسجيل الدخول',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                );
              },
            ),
            const CustomTextButton()
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const RegisterationView();
                  },
                ),
              );
            },
            child: Text(
              'انشاء حساب',
              style:
                  Styles.styleBold16.copyWith(color: mainColor, fontSize: 13),
            ))
      ],
    );
  }
}
