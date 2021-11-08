class UserPaymentModal {
  String sentDescription;
  String receiveDescription;
  String loanDescription;
  String recentTransactionsDescription;
  // Recent Transactions
  int sent;
  int receive;
  int loan;
  int recentTransactions;
  String lastModify;

  UserPaymentModal({
    required this.sentDescription,
    required this.receiveDescription,
    required this.loanDescription,
    required this.sent,
    required this.receive,
    required this.loan,
    required this.lastModify,
    required this.recentTransactionsDescription,
    required this.recentTransactions,
  });
}
