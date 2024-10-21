// To parse this JSON data, do
//
//     final reports = reportsFromJson(jsonString);

import 'dart:convert';

Reports reportsFromJson(String str) => Reports.fromJson(json.decode(str));

String reportsToJson(Reports data) => json.encode(data.toJson());

class Reports {
  bool? success;
  Data? data;
  String? message;

  Reports({
    this.success,
    this.data,
    this.message,
  });

  factory Reports.fromJson(Map<String, dynamic> json) => Reports(
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
  var deduction;
  var deductionPercentage;
  var nonDeduction;
  var nonDeductionPercentage;
  var later;
  var laterPercentage;
  var possible;
  var possiblePercentage;

  Data({
    this.deduction,
    this.deductionPercentage,
    this.nonDeduction,
    this.nonDeductionPercentage,
    this.later,
    this.laterPercentage,
    this.possible,
    this.possiblePercentage,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        deduction: json["deduction"],
        deductionPercentage: json["deductionPercentage"],
        nonDeduction: json["nonDeduction"],
        nonDeductionPercentage: json["nonDeductionPercentage"],
        later: json["later"],
        laterPercentage: json["laterPercentage"],
        possible: json["possible"],
        possiblePercentage: json["possiblePercentage"],
      );

  Map<String, dynamic> toJson() => {
        "deduction": deduction,
        "deductionPercentage": deductionPercentage,
        "nonDeduction": nonDeduction,
        "nonDeductionPercentage": nonDeductionPercentage,
        "later": later,
        "laterPercentage": laterPercentage,
        "possible": possible,
        "possiblePercentage": possiblePercentage,
      };
}
