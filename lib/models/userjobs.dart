// To parse this JSON data, do
//
//     final userJobs = userJobsFromJson(jsonString);

import 'dart:convert';

UserJobs userJobsFromJson(String str) => UserJobs.fromJson(json.decode(str));

String userJobsToJson(UserJobs data) => json.encode(data.toJson());

class UserJobs {
  bool? success;
  List<Datum>? data;
  String? message;

  UserJobs({
    this.success,
    this.data,
    this.message,
  });

  factory UserJobs.fromJson(Map<String, dynamic> json) => UserJobs(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class Datum {
  int? id;
  String? code;
  String? occupation;

  Datum({
    this.id,
    this.code,
    this.occupation,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        code: json["code"],
        occupation: json["occupation"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "occupation": occupation,
      };
}
