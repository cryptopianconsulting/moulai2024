// To parse this JSON data, do
//
//     final percentage = percentageFromJson(jsonString);

import 'dart:convert';

Percentage percentageFromJson(String str) =>
    Percentage.fromJson(json.decode(str));

String percentageToJson(Percentage data) => json.encode(data.toJson());

class Percentage {
  bool? success;
  Data? data;
  String? message;

  Percentage({
    this.success,
    this.data,
    this.message,
  });

  factory Percentage.fromJson(Map<String, dynamic> json) => Percentage(
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
  var percentage;

  Data({
    this.percentage,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        percentage: json["percentage"],
      );

  Map<String, dynamic> toJson() => {
        "percentage": percentage,
      };
}
