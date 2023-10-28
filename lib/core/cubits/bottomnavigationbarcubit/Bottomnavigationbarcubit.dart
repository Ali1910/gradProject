import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/core/cubits/bottomnavigationbarcubit/Bottomnavigationvarstates.dart';
import 'package:qrduation_project/features/Nfc/presentation/views/NFC/NFC.dart';
import 'package:qrduation_project/features/home/presentation/views/home/widgets/Homebody.dart';
import 'package:qrduation_project/features/personalprofile/presentation/views/personalprofile/PeronalprofileBodyView.dart';
import 'package:qrduation_project/features/questionandanswer/presentation/views/questionsAnswer/questionPageOne.dart';
import 'package:qrduation_project/features/report/presentation/views/reports/reportsPageOne.dart';

class NavagationbarCubit extends Cubit<BottomNavigationBarStates> {
  NavagationbarCubit() : super(InitialState());
  int currentIndex = 0;
  List<Widget> bottomnavigationbarviews = [
    const HomeViewBody(),
    const NfcViewbody(),
    const QuestionsAnswersbdoyview(),
    const ReportsBodyview(),
    const PersonalProfileBodyView()
  ];
  void tapped(int index) {
    currentIndex = index;
    emit(TappedState());
  }
}
