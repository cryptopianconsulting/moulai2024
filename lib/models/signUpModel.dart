// To parse this JSON data, do
//
//     final signUpRequest = signUpRequestFromJson(jsonString);

import 'dart:convert';

SignUpRequest signUpRequestFromJson(String str) =>
    SignUpRequest.fromJson(json.decode(str));

String signUpRequestToJson(SignUpRequest data) => json.encode(data.toJson());

class SignUpRequest {
  SignUpRequest({
    this.success,
    this.data,
    this.message,
  });

  bool? success;
  Data? data;
  String? message;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => SignUpRequest(
        success: json["success"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data?.toJson(),
        "message": message,
      };
}

class Data {
  Data({
    this.user,
  });

  User? user;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
      };
}

class User {
  User({
    this.id,
    this.email,
    this.thirdParty,
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.middleName,
    this.createdAt,
    this.updatedAt,
    this.token,
  });

  String? id;
  String? email;
  bool? thirdParty;
  String? phoneNumber;
  String? firstName;
  String? lastName;
  String? middleName;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? token;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
        thirdParty: json["third_party"],
        phoneNumber: json["phone_number"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        middleName: json["middle_name"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "third_party": thirdParty,
        "phone_number": phoneNumber,
        "first_name": firstName,
        "last_name": lastName,
        "middle_name": middleName,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "token": token,
      };
}
