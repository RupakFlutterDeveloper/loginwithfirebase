class AuthloginModel {
  final String userEmail;
  final String userPassword;
  AuthloginModel({
    required this.userEmail,
    required this.userPassword,
  });
  factory AuthloginModel.fromJson(Map<String, dynamic> json) {
    return AuthloginModel(
      userEmail: json['userEmail'],
      userPassword: json['userPassword'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'userEmail': userEmail,
      'userPassword': userPassword,
    };
  }
}
