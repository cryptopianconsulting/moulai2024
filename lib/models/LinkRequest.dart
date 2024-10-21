// To parse this JSON data, do
//
//     final getLinkRequest = getLinkRequestFromJson(jsonString);

import 'dart:convert';

GetLinkRequest getLinkRequestFromJson(String str) =>
    GetLinkRequest.fromJson(json.decode(str));

String getLinkRequestToJson(GetLinkRequest data) => json.encode(data.toJson());

class GetLinkRequest {
  GetLinkRequest({
    this.success,
    this.data,
    this.message,
  });

  bool? success;
  Data? data;
  String? message;

  factory GetLinkRequest.fromJson(Map<String, dynamic> json) => GetLinkRequest(
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
  Data({
    this.type,
    this.userId,
    this.expiresAt,
    this.mobile,
    this.links,
  });

  String? type;
  String? userId;
  DateTime? expiresAt;
  String? mobile;
  Links? links;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        type: json["type"],
        userId: json["userId"],
        expiresAt: json["expiresAt"] == null
            ? null
            : DateTime.parse(json["expiresAt"]),
        mobile: json["mobile"],
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "userId": userId,
        "expiresAt": expiresAt?.toIso8601String(),
        "mobile": mobile,
        "links": links?.toJson(),
      };
}

class Links {
  Links({
    this.self,
    this.public,
  });

  String? self;
  String? public;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: json["self"],
        public: json["public"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "public": public,
      };
}
