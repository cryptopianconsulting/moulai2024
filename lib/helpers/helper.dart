import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

String? code;

String? get helperLocal => code == null ? 'en' : code;

getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token').toString();
}

getUserData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  Map<String, dynamic> jsonData = jsonDecode(prefs.getString('user')!);
  if (jsonData.isNotEmpty) {
    return jsonData;
  } else
    return null;
}

setUserData(data) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String user = jsonEncode(data);
  //print(user);
  return prefs.setString('user', user);
}

setUserName(data) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // String user = jsonEncode(data);
  //print(user);
  return prefs.setString('userName', data);
}

setUserToken(token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString('token', token);
}

setUserEmail(token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString('email', token);
}

setLastName(token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString('last_name', token);
}

setPushToken(token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString('push_token', token);
}

getpushToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('push_token');
}

getUserName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('userName');
}

getUserEmail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('email');
}


getLastName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('last_name');
}
