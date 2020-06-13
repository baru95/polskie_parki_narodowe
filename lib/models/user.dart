class User {
  final String uid;

  User({this.uid});
}

class UserData {
  final String uid;
  final int result;
  final String gender;
  final String age;
  final String education;
  final String inhabitancy;
  final String quarter;
  final String pets;

  UserData(
      {this.uid,
      this.result,
      this.gender,
      this.age,
      this.education,
      this.inhabitancy,
      this.quarter,
      this.pets});
}
