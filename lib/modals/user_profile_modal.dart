class UserProfileModal {
  String userImageUrl;
  String name;
  String jobTitle;
  int income;
  int expenses;
  int loan;

  UserProfileModal(
      {required this.userImageUrl,
      required this.income,
      required this.name,
      required this.jobTitle,
      required this.expenses,
      required this.loan});
}
