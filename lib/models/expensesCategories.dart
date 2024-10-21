// To parse this JSON data, do
//
//     final expensesCategories = expensesCategoriesFromJson(jsonString);

import 'dart:convert';

ExpensesCategories expensesCategoriesFromJson(String str) =>
    ExpensesCategories.fromJson(json.decode(str));

String expensesCategoriesToJson(ExpensesCategories data) =>
    json.encode(data.toJson());

class ExpensesCategories {
  bool? success;
  List<Datum>? data;
  String? message;

  ExpensesCategories({
    this.success,
    this.data,
    this.message,
  });

  factory ExpensesCategories.fromJson(Map<String, dynamic> json) =>
      ExpensesCategories(
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
  String? divisionCode;
  String? divisionTitle;
  String? subdivisionCode;
  String? subdivisionTitle;
  String? groupCode;
  String? groupTitle;
  String? classCode;
  String? classTitle;
  double? amount;

  Datum({
    this.id,
    this.divisionCode,
    this.divisionTitle,
    this.subdivisionCode,
    this.subdivisionTitle,
    this.groupCode,
    this.groupTitle,
    this.classCode,
    this.classTitle,
    this.amount,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        divisionCode: json["division_code"],
        divisionTitle: json["division_title"],
        subdivisionCode: json["subdivision_code"],
        subdivisionTitle: json["subdivision_title"],
        groupCode: json["group_code"],
        groupTitle: json["group_title"],
        classCode: json["class_code"],
        classTitle: json["class_title"],
        amount: json["amount"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "division_code": divisionCode,
        "division_title": divisionTitle,
        "subdivision_code": subdivisionCode,
        "subdivision_title": subdivisionTitle,
        "group_code": groupCode,
        "group_title": groupTitle,
        "class_code": classCode,
        "class_title": classTitle,
        "amount": amount,
      };
}
