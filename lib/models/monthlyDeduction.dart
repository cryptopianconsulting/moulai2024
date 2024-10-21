// To parse this JSON data, do
//
//     final monthlyDeduction = monthlyDeductionFromJson(jsonString);

import 'dart:convert';

MonthlyDeduction monthlyDeductionFromJson(String str) =>
    MonthlyDeduction.fromJson(json.decode(str));

String monthlyDeductionToJson(MonthlyDeduction data) =>
    json.encode(data.toJson());

class MonthlyDeduction {
  bool? success;
  List<Datum>? data;
  String? message;

  MonthlyDeduction({
    this.success,
    this.data,
    this.message,
  });

  factory MonthlyDeduction.fromJson(Map<String, dynamic> json) =>
      MonthlyDeduction(
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
  String? name;
  double? amount;

  Datum({
    this.name,
    this.amount,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        amount: json["amount"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "amount": amount,
      };
}
