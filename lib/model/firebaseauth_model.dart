class FirebaseAuthModel {
  final String? userName;
  final String? userEmail;
  final String? userPassword;
  final num? userNumber;
  final String? userAddress;

  final String? userGender;
  FirebaseAuthModel({
    this.userName,
    this.userEmail,
    this.userPassword,
    this.userNumber,
    this.userGender,
    this.userAddress,
  });
  factory FirebaseAuthModel.fromJson(Map<String, dynamic> json) {
    return FirebaseAuthModel(
      userName: json['userName'],
      userEmail: json['userEmail'],
      userPassword: json['userPassword'],
      userNumber: json['userNumber'],
      userGender: json['userGender'],
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
      'userAddress': userAddress,
    };
  }
}
