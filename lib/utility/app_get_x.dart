import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:transactions/modals/user_payment_modal.dart';
import 'package:transactions/modals/user_profile_modal.dart';
import 'package:transactions/utility/urls.dart';

class Getx extends GetxController {
  var currentBarIndex = 0;
  void changeBarIndex(int index) {
    currentBarIndex = index;
    update();
  }

  late UserProfileModal currentUser;
  void userInitInfo() {
    currentUser = UserProfileModal(
        name: 'Hira Riaz',
        expenses: 5500,
        userImageUrl: URL().unknownPerson,
        income: 8900,
        loan: 890,
        jobTitle: 'UX/UI Designer');
    update();
  }

  void userUpdateInfo(UserProfileModal user) {
    currentUser = user;
    update();
  }

  late UserPaymentModal userPayments;
  void userInitOverview() {
    userPayments = UserPaymentModal(
        sentDescription: 'Send Payment to Me',
        receiveDescription: 'Receive salary from company',
        loanDescription: 'Loan for car',
        sent: 150,
        receive: 250,
        loan: 400,
        lastModify: 'Sept 13,2020',
        recentTransactions: 30,
        recentTransactionsDescription: 'Payment from my friend');
    update();
  }

  void userUpdateOverview(UserPaymentModal overview) {
    userPayments = overview;
    update();
  }

  int currentSelectedPayment = 0;
  void updateSelectedPayment(int i) {
    currentSelectedPayment = i;
    update();
  }
}
