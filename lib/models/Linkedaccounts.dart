// To parse this JSON data, do
//
//     final accounts = accountsFromJson(jsonString);

import 'dart:convert';

Accounts accountsFromJson(String str) => Accounts.fromJson(json.decode(str));

String accountsToJson(Accounts data) => json.encode(data.toJson());

class Accounts {
  String? type;
  List<Datum>? data;
  AccountsLinks? links;

  Accounts({
    this.type,
    this.data,
    this.links,
  });

  factory Accounts.fromJson(Map<String, dynamic> json) => Accounts(
        type: json["type"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        links: json["links"] == null
            ? null
            : AccountsLinks.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "links": links?.toJson(),
      };
}

class Datum {
  String? type;
  String? id;
  String? accountNo;
  String? name;
  String? currency;
  String? balance;
  String? availableFunds;
  DateTime? lastUpdated;
  String? institution;
  String? creditLimit;
  Class? datumClass;
  List<TransactionInterval>? transactionIntervals;
  String? accountHolder;
  String? connection;
  String? status;
  DatumLinks? links;

  Datum({
    this.type,
    this.id,
    this.accountNo,
    this.name,
    this.currency,
    this.balance,
    this.availableFunds,
    this.lastUpdated,
    this.institution,
    this.creditLimit,
    this.datumClass,
    this.transactionIntervals,
    this.accountHolder,
    this.connection,
    this.status,
    this.links,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        type: json["type"],
        id: json["id"],
        accountNo: json["accountNo"],
        name: json["name"],
        currency: json["currency"],
        balance: json["balance"],
        availableFunds: json["availableFunds"],
        lastUpdated: json["lastUpdated"] == null
            ? null
            : DateTime.parse(json["lastUpdated"]),
        institution: json["institution"],
        creditLimit: json["creditLimit"],
        datumClass:
            json["class"] == null ? null : Class.fromJson(json["class"]),
        transactionIntervals: json["transactionIntervals"] == null
            ? []
            : List<TransactionInterval>.from(json["transactionIntervals"]!
                .map((x) => TransactionInterval.fromJson(x))),
        accountHolder: json["accountHolder"],
        connection: json["connection"],
        status: json["status"],
        links:
            json["links"] == null ? null : DatumLinks.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "accountNo": accountNo,
        "name": name,
        "currency": currency,
        "balance": balance,
        "availableFunds": availableFunds,
        "lastUpdated": lastUpdated?.toIso8601String(),
        "institution": institution,
        "creditLimit": creditLimit,
        "class": datumClass?.toJson(),
        "transactionIntervals": transactionIntervals == null
            ? []
            : List<dynamic>.from(transactionIntervals!.map((x) => x.toJson())),
        "accountHolder": accountHolder,
        "connection": connection,
        "status": status,
        "links": links?.toJson(),
      };
}

class Class {
  String? type;
  String? product;

  Class({
    this.type,
    this.product,
  });

  factory Class.fromJson(Map<String, dynamic> json) => Class(
        type: json["type"],
        product: json["product"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "product": product,
      };
}

class DatumLinks {
  String? self;
  String? transactions;
  dynamic connection;
  String? institution;
  dynamic statements;

  DatumLinks({
    this.self,
    this.transactions,
    this.connection,
    this.institution,
    this.statements,
  });

  factory DatumLinks.fromJson(Map<String, dynamic> json) => DatumLinks(
        self: json["self"],
        transactions: json["transactions"],
        connection: json["connection"],
        institution: json["institution"],
        statements: json["statements"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "transactions": transactions,
        "connection": connection,
        "institution": institution,
        "statements": statements,
      };
}

class StatementsClass {
  String? clDetailedIncomeAsset;
  String? clIncome;
  String? clPayment;

  StatementsClass({
    this.clDetailedIncomeAsset,
    this.clIncome,
    this.clPayment,
  });

  factory StatementsClass.fromJson(Map<String, dynamic> json) =>
      StatementsClass(
        clDetailedIncomeAsset: json["cl-detailed-income-asset"],
        clIncome: json["cl-income"],
        clPayment: json["cl-payment"],
      );

  Map<String, dynamic> toJson() => {
        "cl-detailed-income-asset": clDetailedIncomeAsset,
        "cl-income": clIncome,
        "cl-payment": clPayment,
      };
}

class TransactionInterval {
  DateTime? from;
  DateTime? to;

  TransactionInterval({
    this.from,
    this.to,
  });

  factory TransactionInterval.fromJson(Map<String, dynamic> json) =>
      TransactionInterval(
        from: json["from"] == null ? null : DateTime.parse(json["from"]),
        to: json["to"] == null ? null : DateTime.parse(json["to"]),
      );

  Map<String, dynamic> toJson() => {
        "from":
            "${from!.year.toString().padLeft(4, '0')}-${from!.month.toString().padLeft(2, '0')}-${from!.day.toString().padLeft(2, '0')}",
        "to":
            "${to!.year.toString().padLeft(4, '0')}-${to!.month.toString().padLeft(2, '0')}-${to!.day.toString().padLeft(2, '0')}",
      };
}

class AccountsLinks {
  String? self;

  AccountsLinks({
    this.self,
  });

  factory AccountsLinks.fromJson(Map<String, dynamic> json) => AccountsLinks(
        self: json["self"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
      };
}
