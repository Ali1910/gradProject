import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qrduation_project/core/utilts/constans.dart';
import 'package:qrduation_project/core/utilts/style.dart';
import 'package:qrduation_project/features/BMI/presenatation/manager/BMICubit.dart';
import 'package:qrduation_project/features/BMI/presenatation/manager/BMIStates.dart';
import 'package:qrduation_project/features/BMI/presenatation/views/widgets/CustomGenderConatinerBMI.dart';
import 'package:qrduation_project/features/BMI/presenatation/views/widgets/CustomSlider.dart';
import 'package:qrduation_project/features/BMI/presenatation/views/widgets/CustomWeight&AgeContainer.dart';
import 'package:qrduation_project/features/Login/presentation/views/widgets/CustomelevatedbuttonButton.dart';

class BMIviewBody extends StatelessWidget {
  const BMIviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocBuilder<BMICubit, BMIStates>(
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(height: 25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomGenderContainerBMI(
                    text: 'ذكر',
                    color: BlocProvider.of<BMICubit>(context).male
                        ? Colors.blue
                        : mainColor,
                    onTap: () {
                      BlocProvider.of<BMICubit>(context).maletapped();
                      BlocProvider.of<BMICubit>(context).genderNotchecked =
                          true;
                    },
                  ),
                  CustomGenderContainerBMI(
                    text: 'أنثى',
                    color: BlocProvider.of<BMICubit>(context).female
                        ? Colors.pink
                        : mainColor,
                    onTap: () {
                      BlocProvider.of<BMICubit>(context).femaleTapped();
                      BlocProvider.of<BMICubit>(context).genderNotchecked =
                          true;
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomSlider(
                onChanged: (v) {
                  BlocProvider.of<BMICubit>(context).sliderslided(v);
                },
                value: BlocProvider.of<BMICubit>(context).slidervalue,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomWeightAgeConatiner(
                    text: 'حدد وزنك',
                    incrementonPressed: () {
                      BlocProvider.of<BMICubit>(context).incrementweight();
                    },
                    decrementonPressed: () {
                      BlocProvider.of<BMICubit>(context).decrementweight();
                    },
                    value: BlocProvider.of<BMICubit>(context)
                        .initialWeightValue
                        .toString(),
                  ),
                  CustomWeightAgeConatiner(
                    text: 'حدد عمرك',
                    incrementonPressed: () {
                      BlocProvider.of<BMICubit>(context).incrementAge();
                    },
                    decrementonPressed: () {
                      BlocProvider.of<BMICubit>(context).decrementAge();
                    },
                    value: BlocProvider.of<BMICubit>(context)
                        .initialAgeValue
                        .toString(),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Customelevatedbutton(
                  text: 'احسب',
                  onPressed: () {
                    if (BlocProvider.of<BMICubit>(context).genderChecked()) {
                      BlocProvider.of<BMICubit>(context).calculateBMI(
                          BlocProvider.of<BMICubit>(context)
                              .initialWeightValue
                              .toDouble(),
                          BlocProvider.of<BMICubit>(context)
                              .slidervalue
                              .toDouble());
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Center(
                              child: Text(
                                'your BMI is ${BlocProvider.of<BMICubit>(context).yourBmI.toInt().toString()}',
                                style: Styles.styleBold24
                                    .copyWith(color: mainColor),
                              ),
                            );
                          });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          duration: Duration(seconds: 2),
                          content: Text('من فضلك حدد نوعك ')));
                    }
                  }),
            ],
          );
        },
      ),
    );
  }
}
