// To parse this JSON data, do
//
//     final transactions = transactionsFromJson(jsonString);

import 'dart:convert';

Transactions transactionsFromJson(String str) =>
    Transactions.fromJson(json.decode(str));

String transactionsToJson(Transactions data) => json.encode(data.toJson());

class Transactions {
  bool? success;
  List<TransactionItem>? data;
  String? message;

  Transactions({
    this.success,
    this.data,
    this.message,
  });

  factory Transactions.fromJson(Map<String, dynamic> json) => Transactions(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<TransactionItem>.from(
                json["data"]!.map((x) => TransactionItem.fromJson(x))),
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

class TransactionItem {
  int? id;
  String? userId;
  String? transactionId;
  String? status;
  String? description;
  var amount;
  String? account;
  String? balance;
  String? direction;
  String? datumClass;
  String? institution;
  String? connection;
  String? transactionDate;
  DateTime? postDate;
  String? deductionClass;
  dynamic deductionId;
  String? deductionStatus;
  String? merchantId;
  String? merchantBusinessName;
  String? merchantWebsite;
  String? merchantAbn;
  String? merchantLogoMaster;
  String? merchantLogoThumb;
  String? merchantLocale;
  String? merchantInternational;
  dynamic createdAt;
  DateTime? updatedAt;
  dynamic deduction;

  TransactionItem({
    this.id,
    this.userId,
    this.transactionId,
    this.status,
    this.description,
    this.amount,
    this.account,
    this.balance,
    this.direction,
    this.datumClass,
    this.institution,
    this.connection,
    this.transactionDate,
    this.postDate,
    this.deductionClass,
    this.deductionId,
    this.deductionStatus,
    this.merchantId,
    this.merchantBusinessName,
    this.merchantWebsite,
    this.merchantAbn,
    this.merchantLogoMaster,
    this.merchantLogoThumb,
    this.merchantLocale,
    this.merchantInternational,
    this.createdAt,
    this.updatedAt,
    this.deduction,
  });

  factory TransactionItem.fromJson(Map<String, dynamic> json) =>
      TransactionItem(
        id: json["id"],
        userId: json["user_id"],
        transactionId: json["transaction_id"],
        status: json["status"],
        description: json["description"],
        amount: json["amount"],
        account: json["account"],
        balance: json["balance"],
        direction: json["direction"],
        datumClass: json["class"],
        institution: json["institution"],
        connection: json["connection"],
        transactionDate: json["transactionDate"],
        postDate: json["postDate"] == null || json["postDate"] == ''
            ? null
            : DateTime.parse(json["postDate"]),
        deductionClass: json["deduction_class"],
        deductionId: json["deduction_id"],
        deductionStatus: json["deduction_status"],
        merchantId: json["merchant_id"],
        merchantBusinessName: json["merchant_businessName"],
        merchantWebsite: json["merchant_website"],
        merchantAbn: json["merchant_abn"],
        merchantLogoMaster: json["merchant_logoMaster"],
        merchantLogoThumb: json["merchant_logoThumb"],
        merchantLocale: json["merchant_locale"],
        merchantInternational: json["merchant_international"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deduction: json["deduction"].toString() == null.toString()
            ? 1
            : Deduction.fromJson(json["deduction"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "transaction_id": transactionId,
        "status": status,
        "description": description,
        "amount": amount,
        "account": account,
        "balance": balance,
        "direction": direction,
        "class": datumClass,
        "institution": institution,
        "connection": connection,
        "transactionDate": transactionDate,
        "postDate": postDate?.toIso8601String(),
        "deduction_class": deductionClass,
        "deduction_id": deductionId,
        "deduction_status": deductionStatus,
        "merchant_id": merchantId,
        "merchant_businessName": merchantBusinessName,
        "merchant_website": merchantWebsite,
        "merchant_abn": merchantAbn,
        "merchant_logoMaster": merchantLogoMaster,
        "merchant_logoThumb": merchantLogoThumb,
        "merchant_locale": merchantLocale,
        "merchant_international": merchantInternational,
        "created_at": createdAt,
        "updated_at": updatedAt?.toIso8601String(),
        "deduction": deduction?.toJson(),
      };
}

class Deduction {
  int? id;
  String? divisionCode;
  String? divisionTitle;
  String? subdivisionCode;
  String? subdivisionTitle;
  String? groupCode;
  String? groupTitle;
  String? classCode;
  String? classTitle;

  Deduction({
    this.id,
    this.divisionCode,
    this.divisionTitle,
    this.subdivisionCode,
    this.subdivisionTitle,
    this.groupCode,
    this.groupTitle,
    this.classCode,
    this.classTitle,
  });

  factory Deduction.fromJson(Map<String, dynamic> json) => Deduction(
        id: json["id"],
        divisionCode: json["division_code"],
        divisionTitle: json["division_title"],
        subdivisionCode: json["subdivision_code"],
        subdivisionTitle: json["subdivision_title"],
        groupCode: json["group_code"],
        groupTitle: json["group_title"],
        classCode: json["class_code"],
        classTitle: json["class_title"],
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
      };
}
