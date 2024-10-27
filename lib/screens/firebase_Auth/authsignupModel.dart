class AuthSignupModel {
  final String userName;
  final String userEmail;
  final String userPassword;
  final num userNumber; // Consider using int or double if appropriate
  final String userAddress;
  final num penisLength; // Consider using double if it represents a length
  // final File userImage; // Uncomment if needed
  final String userGender;

  AuthSignupModel({
    required this.userName,
    required this.userEmail,
    required this.userPassword,
    required this.userNumber,
    required this.userGender,
    required this.penisLength,
    required this.userAddress,
  });

  factory AuthSignupModel.fromJson(Map<String, dynamic> json) {
    return AuthSignupModel(
      userName: json['userName'],
      userEmail: json['userEmail'],
      userPassword: json['userPassword'],
      userNumber: json['userNumber'],
      userGender: json['userGender'],
      penisLength: json['penisLength'],
      userAddress: json['userAddress'], // Fixed typo here
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'userEmail': userEmail,
      'userPassword': userPassword,
      'userNumber': userNumber,
      'userGender': userGender,
      'penisLength': penisLength,
      'userAddress': userAddress,
    };
  }
}
