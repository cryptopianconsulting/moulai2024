// To parse this JSON data, do
//
//     final getQa = getQaFromJson(jsonString);

import 'dart:convert';

GetQa getQaFromJson(String str) => GetQa.fromJson(json.decode(str));

String getQaToJson(GetQa data) => json.encode(data.toJson());

class GetQa {
  bool? success;
  List<Datum>? data;
  String? message;

  GetQa({
    this.success,
    this.data,
    this.message,
  });

  factory GetQa.fromJson(Map<String, dynamic> json) => GetQa(
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
  String? question;
  bool? status;
  int? pageNumber;
  List<Answer>? answer;

  Datum({
    this.id,
    this.question,
    this.status,
    this.pageNumber,
    this.answer,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        question: json["question"],
        status: json["status"],
        pageNumber: json["page_number"],
        answer: json["answer"] == null
            ? []
            : List<Answer>.from(json["answer"]!.map((x) => Answer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "question": question,
        "status": status,
        "page_number": pageNumber,
        "answer": answer == null
            ? []
            : List<dynamic>.from(answer!.map((x) => x.toJson())),
      };
}

class Answer {
  int? id;
  String? answer;
  String? description;
  dynamic count;
  dynamic accountType;
  String? icon;
  int? questionId;

  Answer({
    this.id,
    this.answer,
    this.description,
    this.count,
    this.accountType,
    this.icon,
    this.questionId,
  });

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
        id: json["id"],
        answer: json["answer"],
        description: json["description"],
        count: json["count"],
        accountType: json["account_type"],
        icon: json["icon"],
        questionId: json["question_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "answer": answer,
        "description": description,
        "count": count,
        "account_type": accountType,
        "icon": icon,
        "question_id": questionId,
      };
}
