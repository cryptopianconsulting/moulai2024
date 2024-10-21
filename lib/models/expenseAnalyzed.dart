// To parse this JSON data, do
//
//     final expenseAnalyzed = expenseAnalyzedFromJson(jsonString);

import 'dart:convert';

ExpenseAnalyzed expenseAnalyzedFromJson(String str) =>
    ExpenseAnalyzed.fromJson(json.decode(str));

String expenseAnalyzedToJson(ExpenseAnalyzed data) =>
    json.encode(data.toJson());

class ExpenseAnalyzed {
  bool? success;
  Data? data;
  String? message;

  ExpenseAnalyzed({
    this.success,
    this.data,
    this.message,
  });

  factory ExpenseAnalyzed.fromJson(Map<String, dynamic> json) =>
      ExpenseAnalyzed(
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
  int? totalTransaction;
  int? totalTransactionBeCtegories;
  int? totalAtegories;
  int? totalMerchant;

  Data({
    this.totalTransaction,
    this.totalTransactionBeCtegories,
    this.totalAtegories,
    this.totalMerchant,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalTransaction: json["total_transaction"],
        totalTransactionBeCtegories: json["total_transaction_be_ctegories"],
        totalAtegories: json["total_ategories"],
        totalMerchant: json["total_merchant"],
      );

  Map<String, dynamic> toJson() => {
        "total_transaction": totalTransaction,
        "total_transaction_be_ctegories": totalTransactionBeCtegories,
        "total_ategories": totalAtegories,
        "total_merchant": totalMerchant,
      };
}
