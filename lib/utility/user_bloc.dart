import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transactions/modals/user_profile_modal.dart';
import 'package:transactions/utility/urls.dart';

class UserBloc extends Bloc {
  UserBloc() : super(null);
// I learned the BLOC so will not be perfect
  late UserProfileModal currentUser = UserProfileModal(
      name: 'Hira Riaz',
      expenses: 5500,
      userImageUrl: URL().unknownPerson,
      income: 8900,
      loan: 890,
      jobTitle: 'UX/UI Designer');

  void userInitInfoBloc() {
    currentUser = UserProfileModal(
        name: 'Hira Riaz',
        expenses: 5500,
        userImageUrl: URL().unknownPerson,
        income: 8900,
        loan: 890,
        jobTitle: 'UX/UI Designer');
  }

  void userUpdateInfoBloc(UserProfileModal user) {
    currentUser = user;
  }
}
