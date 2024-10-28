class FirebaseAuthModel {
  final String? userName;
  final String? userEmail;
  final String? userPassword;
  final num? userNumber;
  final String? userAddress;
  final num? penisLength;
  final String? userGender;
  FirebaseAuthModel({
    this.userName,
    this.userEmail,
    this.userPassword,
    this.userNumber,
    this.userGender,
    this.penisLength,
    this.userAddress,
  });
  factory FirebaseAuthModel.fromJson(Map<String, dynamic> json) {
    return FirebaseAuthModel(
      userName: json['userName'],
      userEmail: json['userEmail'],
      userPassword: json['userPassword'],
      userNumber: json['userNumber'],
      userGender: json['userGender'],
      penisLength: json['penisLength'],
      userAddress: json['userAddress'],
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
