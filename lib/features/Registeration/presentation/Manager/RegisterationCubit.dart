import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrduation_project/features/Registeration/presentation/Manager/RegisterationStates.dart';

class RegisterationCubit extends Cubit<Registerationstates> {
  RegisterationCubit() : super(InitialState());
}
