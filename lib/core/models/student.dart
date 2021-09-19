class Student {
  String fullName;
  String fatherName;
  String phone;
  String email;
  String password;

  Student(
      {required this.fullName,
      required this.fatherName,
      required this.phone,
      required this.email,
      required this.password});

  toJson() {
    return {
      'email': this.email,
      'fatherName': this.fatherName,
      'fullName': this.fullName,
      'phone': this.phone
    };
  }
}
