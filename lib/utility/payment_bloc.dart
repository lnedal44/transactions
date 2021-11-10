import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transactions/modals/user_payment_modal.dart';

class PaymentBloc extends Cubit<UserPaymentModal> {
  PaymentBloc()
      : super(UserPaymentModal(
            sentDescription: '',
            receiveDescription: '',
            loanDescription: '',
            sent: 0,
            receive: 0,
            loan: 0,
            lastModify: '',
            recentTransactions: 0,
            recentTransactionsDescription: ''));

  late UserPaymentModal userPayments = UserPaymentModal(
      sentDescription: 'Send Payment to Me',
      receiveDescription: 'Receive salary from company',
      loanDescription: 'Loan for car',
      sent: 150,
      receive: 250,
      loan: 400,
      lastModify: 'Sept 13,2020',
      recentTransactions: 30,
      recentTransactionsDescription: 'Payment from my friend');

  void userInitPaymentBloc() {
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
  }

  void userUpdatePaymentBloc(UserPaymentModal payment) {
    userPayments = payment;
  }

  int currentSelectedPaymentCard = 0;
  void updateSelectedPaymentCardBloc(int i) {
    currentSelectedPaymentCard = i;
  }
}
