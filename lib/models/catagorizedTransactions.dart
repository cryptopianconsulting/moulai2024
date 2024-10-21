// To parse this JSON data, do
//
//     final categoriesedTransactions = categoriesedTransactionsFromJson(jsonString);

import 'dart:convert';

import 'package:moulai1/models/transactionsModel.dart';

CategoriesedTransactions categoriesedTransactionsFromJson(String str) =>
    CategoriesedTransactions.fromJson(json.decode(str));

String categoriesedTransactionsToJson(CategoriesedTransactions data) =>
    json.encode(data.toJson());

class CategoriesedTransactions {
  bool? success;
  List<Datum>? data;
  String? message;

  CategoriesedTransactions({
    this.success,
    this.data,
    this.message,
  });

  factory CategoriesedTransactions.fromJson(Map<String, dynamic> json) =>
      CategoriesedTransactions(
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

// class Transaction {
//   int? id;
//   String? userId;
//   String? transactionId;
//   String? status;
//   String? description;
//   double? amount;
//   String? account;
//   String? balance;
//   String? direction;
//   String? transactionClass;
//   String? institution;
//   String? connection;
//   String? transactionDate;
//   DateTime? postDate;
//   String? deductionClass;
//   int? deductionId;
//   String? deductionStatus;
//   String? merchantId;
//   String? merchantBusinessName;
//   String? merchantWebsite;
//   String? merchantAbn;
//   String? merchantLogoMaster;
//   String? merchantLogoThumb;
//   String? merchantLocale;
//   String? merchantInternational;
//   dynamic createdAt;
//   DateTime? updatedAt;
//   Datum? deduction;

//   Transaction({
//     this.id,
//     this.userId,
//     this.transactionId,
//     this.status,
//     this.description,
//     this.amount,
//     this.account,
//     this.balance,
//     this.direction,
//     this.transactionClass,
//     this.institution,
//     this.connection,
//     this.transactionDate,
//     this.postDate,
//     this.deductionClass,
//     this.deductionId,
//     this.deductionStatus,
//     this.merchantId,
//     this.merchantBusinessName,
//     this.merchantWebsite,
//     this.merchantAbn,
//     this.merchantLogoMaster,
//     this.merchantLogoThumb,
//     this.merchantLocale,
//     this.merchantInternational,
//     this.createdAt,
//     this.updatedAt,
//     this.deduction,
//   });

//   factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
//         id: json["id"],
//         userId: json["user_id"],
//         transactionId: json["transaction_id"],
//         status: json["status"],
//         description: json["description"],
//         amount: json["amount"]?.toDouble(),
//         account: json["account"],
//         balance: json["balance"],
//         direction: json["direction"],
//         transactionClass: json["class"],
//         institution: json["institution"],
//         connection: json["connection"],
//         transactionDate: json["transactionDate"],
//         postDate:
//             json["postDate"] == null ? null : DateTime.parse(json["postDate"]),
//         deductionClass: json["deduction_class"],
//         deductionId: json["deduction_id"],
//         deductionStatus: json["deduction_status"],
//         merchantId: json["merchant_id"],
//         merchantBusinessName: json["merchant_businessName"],
//         merchantWebsite: json["merchant_website"],
//         merchantAbn: json["merchant_abn"],
//         merchantLogoMaster: json["merchant_logoMaster"],
//         merchantLogoThumb: json["merchant_logoThumb"],
//         merchantLocale: json["merchant_locale"],
//         merchantInternational: json["merchant_international"],
//         createdAt: json["created_at"],
//         updatedAt: json["updated_at"] == null
//             ? null
//             : DateTime.parse(json["updated_at"]),
//         deduction: json["deduction"] == null
//             ? null
//             : Datum.fromJson(json["deduction"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "user_id": userId,
//         "transaction_id": transactionId,
//         "status": status,
//         "description": description,
//         "amount": amount,
//         "account": account,
//         "balance": balance,
//         "direction": direction,
//         "class": transactionClass,
//         "institution": institution,
//         "connection": connection,
//         "transactionDate": transactionDate,
//         "postDate": postDate?.toIso8601String(),
//         "deduction_class": deductionClass,
//         "deduction_id": deductionId,
//         "deduction_status": deductionStatus,
//         "merchant_id": merchantId,
//         "merchant_businessName": merchantBusinessName,
//         "merchant_website": merchantWebsite,
//         "merchant_abn": merchantAbn,
//         "merchant_logoMaster": merchantLogoMaster,
//         "merchant_logoThumb": merchantLogoThumb,
//         "merchant_locale": merchantLocale,
//         "merchant_international": merchantInternational,
//         "created_at": createdAt,
//         "updated_at": updatedAt?.toIso8601String(),
//         "deduction": deduction?.toJson(),
//       };
// }

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
  List<TransactionItem>? transactions;

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
    this.transactions,
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
        transactions: json["transactions"] == null
            ? []
            : List<TransactionItem>.from(
                json["transactions"]!.map((x) => TransactionItem.fromJson(x))),
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
        "transactions": transactions == null
            ? []
            : List<dynamic>.from(transactions!.map((x) => x.toJson())),
      };
}
