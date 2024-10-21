// To parse this JSON data, do
//
//     final jobsSearch = jobsSearchFromJson(jsonString);

import 'dart:convert';

JobsSearch jobsSearchFromJson(String str) =>
    JobsSearch.fromJson(json.decode(str));

String jobsSearchToJson(JobsSearch data) => json.encode(data.toJson());

class JobsSearch {
  JobsSearch({
    this.success,
    this.data,
    this.message,
  });

  bool? success;
  Data? data;
  String? message;

  factory JobsSearch.fromJson(Map<String, dynamic> json) => JobsSearch(
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
    this.jobs,
    this.lastPage,
  });

  List<Job>? jobs;
  int? lastPage;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        jobs: json["jobs"] == null
            ? []
            : List<Job>.from(json["jobs"]!.map((x) => Job.fromJson(x))),
        lastPage: json["last_page"],
      );

  Map<String, dynamic> toJson() => {
        "jobs": jobs == null
            ? []
            : List<dynamic>.from(jobs!.map((x) => x.toJson())),
        "last_page": lastPage,
      };
}

class Job {
  Job({
    this.id,
    this.code,
    this.occupation,
  });

  int? id;
  String? code;
  String? occupation;

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        id: json["id"],
        code: json["code"],
        occupation: json["occupation"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "occupation": occupation,
      };
}
