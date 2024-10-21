import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart' as dioo;
import 'package:flutter/material.dart';

import 'helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
// http://sandbox-api.mlipa.co.tz:446

class HttpService {
  static const urlBase = 'http://api.moulai.io/api/';

  String apiToken = "";
  dioo.Dio dio = new dioo.Dio();

  Future<HttpService> init() async {
    dio.options.baseUrl = urlBase;
    // dio.options.connectTimeout = 5000; //5s
    // dio.options.receiveTimeout = 3000;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    apiToken = prefs.getString("token")!;

    // print('HTTP Service Intiated ...');

    return this;
  }

  setApiToken(token) async {
    await setUserToken(token);
    this.apiToken = token;
  }

  // getApiToken() async {
  //   var token = await getToken();
  //   return token;
  // }

  Future<dioo.Response> postUrl(endPoint, body) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print('urlBase: -- ${urlBase + endPoint}');

    // apiToken =
    //     "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OTBjNTUwOC1hYWI1LTQ3ZjctYjU2NC1mMzdjYmU0Yjc1NmEiLCJqdGkiOiJlY2EyNDIxYzA2ZjQyYWNiNzBiNjU1MTg4Yzc4OGMzZjg5NWFiNDE4YmZiMDJjMTNhNTgzMDg4MjJjZGZmMWI0YjEwOTlkNDQ2NjhjZjkxNyIsImlhdCI6MTY5MDQ5OTMxOC4yNzY1MDYsIm5iZiI6MTY5MDQ5OTMxOC4yNzY1MjUsImV4cCI6MTcyMjEyMTcxOC4yNTIzNzUsInN1YiI6IjhjZDU2NDVlLTIzMjctNDE3MC04Y2VlLTc0YTAwM2RmNGNjMyIsInNjb3BlcyI6W119.DY3_cMihs1WTPyvPpEGWdm-2srnqSALC7m_f8BF9M4aSkeQhK3DTMyN5mXYQsXZALHgLx7wqDOa9glYKx4O8UtybOOoBmY76FC0AphBrmEb5eZTneYWvkGUU9bC9iO9oldVAIMV85KcMw4Xnp4CqZ-to65j0zfHCmVWRvwl6eHsP-ZTjLkKfOggQmQWBSSxqRRt1UUr_TqUMfAVxZazbi-yZ2lxHv88DJffjyZtD0bYvNJg_QK79ogJb5hMXtb2lDgIt7BMT7VfUUbNFbTMyo8uT7rcM5C8SgS6mL4A5iqRZyywNZWhCQc73e96wp-XEMlCVq83AdJHCbPeK1iRdbmrM_PaibyE7sFmXmObJ_PBaOJkSLrM2lxLEkVrcCE9JH_RT4M9QdajQql_mEzeLIEIg7mSS1SUVNLbFYja2JU8CHmtGjtctHTU-6junmSbkrd8A4Agj67moZQuLiMN3hi8JinDQ8xhTKppYhy5NYGiMdY6N3Vqq7P0vLLLjoL4v9fnJq7Qcb6QRnMvg9lU3Ll0_k5-J7EjaaN6f40c3RKE9emLe2dTY_RshZP-24S99CMFq6dQy5CA8Z0BH55mD_kfy9dtpjkt8peyFk0fXE5ysiGSdzJWvlf3NqcvsflBGAaTq7sK1h6z51iUYp4EMUrS4ctNmHT9VBA9tetEtrOk";
    apiToken = prefs.getString("token")!;

    return dio
        .post(urlBase + endPoint,
            data: body,
            options: dioo.Options(
                validateStatus: (status) => true,
                contentType: dioo.Headers.formUrlEncodedContentType,
                headers: {
                  'Authorization': 'Bearer $apiToken',
                  HttpHeaders.contentTypeHeader: "application/json",
                }))
        .catchError((onError) {
      print('onError: ${onError.toString()}');
    });
  }

  Future<dioo.Response> postUrlUpload(endPoint, body,
      {required Function onSendProgress,
      required Function onRecieveProgress}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    apiToken = prefs.getString("token")!;

    return dio.post(urlBase + endPoint,
        data: body,
        options: dioo.Options(
            contentType: dioo.Headers.formUrlEncodedContentType,
            headers: {'Authorization': 'Bearer $apiToken'}));
  }

  Future<dioo.Response> pos(endPoint, body) async {
    print('URL ${urlBase + endPoint}');
    // print(body);

    // final data = {
    //   'email': 'ebrah4ks968@gmail.com',
    //   'phone_number': '0187614325',
    //   'first_name': 'shatha',
    //   'middle_name': 'ahmed',
    //   'last_name': 'naami',
    //   'device_token': 'qasbcwxertyuiop',
    //   'third_party': '0',
    //   'account_type': '1',
    //   'answer_ids': ['2'], // Use a list for multiple values (if needed)
    //   'job_ids': ['1'], // Use a list for multiple values (if needed)
    // };
    var res;
    res = await dio
        .post(
          urlBase + endPoint,
          data: body,
          options: dioo.Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }),
        )
        .catchError((onError) => print(
            'onErroronError ${onError.toString()}---- ${res.toString()}'));

    return res;
  }

  Future<dioo.Response> get(endPoint) async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // apiToken = prefs.getString("token")!;

    print('URL ${urlBase + endPoint}');
    return dio.get(urlBase + endPoint,
        // queryParameters: body,
        options: dioo.Options(headers: {'Authorization': 'Bearer $apiToken'}));
  }

  Future<dioo.Response> getauth(endPoint) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    apiToken = prefs.getString("token")!;

    print('URL ${urlBase + endPoint}');
    return dio.get(urlBase + endPoint,
        // queryParameters: body,
        options: dioo.Options(headers: {'Authorization': 'Bearer $apiToken'}));
  }

  Future<dioo.Response> appget(endPoint) async {
    return dio.get(
      endPoint,
    );
  }
}
