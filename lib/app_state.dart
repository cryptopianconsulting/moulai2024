import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _BasiqId = prefs.getString('ff_BasiqId') ?? _BasiqId;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _InputTextValue = '';
  String get InputTextValue => _InputTextValue;
  set InputTextValue(String _value) {
    _InputTextValue = _value;
  }

  String _constValue = '123456';
  String get constValue => _constValue;
  set constValue(String _value) {
    _constValue = _value;
  }

  bool _NoneOfOthers = true;
  bool get NoneOfOthers => _NoneOfOthers;
  set NoneOfOthers(bool _value) {
    _NoneOfOthers = _value;
  }

  List<String> _userWorkKind = [];
  List<String> get userWorkKind => _userWorkKind;
  set userWorkKind(List<String> _value) {
    _userWorkKind = _value;
  }

  void addToUserWorkKind(String _value) {
    _userWorkKind.add(_value);
  }

  void removeFromUserWorkKind(String _value) {
    _userWorkKind.remove(_value);
  }

  void removeAtIndexFromUserWorkKind(int _index) {
    _userWorkKind.removeAt(_index);
  }

  List<String> _userPersonalDeduction = [];
  List<String> get userPersonalDeduction => _userPersonalDeduction;
  set userPersonalDeduction(List<String> _value) {
    _userPersonalDeduction = _value;
  }

  void addToUserPersonalDeduction(String _value) {
    _userPersonalDeduction.add(_value);
  }

  void removeFromUserPersonalDeduction(String _value) {
    _userPersonalDeduction.remove(_value);
  }

  void removeAtIndexFromUserPersonalDeduction(int _index) {
    _userPersonalDeduction.removeAt(_index);
  }

  List<String> _userWorkFor = [];
  List<String> get userWorkFor => _userWorkFor;
  set userWorkFor(List<String> _value) {
    _userWorkFor = _value;
  }

  void addToUserWorkFor(String _value) {
    _userWorkFor.add(_value);
  }

  void removeFromUserWorkFor(String _value) {
    _userWorkFor.remove(_value);
  }

  void removeAtIndexFromUserWorkFor(int _index) {
    _userWorkFor.removeAt(_index);
  }

  String _userAnualIncome = '';
  String get userAnualIncome => _userAnualIncome;
  set userAnualIncome(String _value) {
    _userAnualIncome = _value;
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String _value) {
    _userName = _value;
  }

  String _emailVerifyCode = '';
  String get emailVerifyCode => _emailVerifyCode;
  set emailVerifyCode(String _value) {
    _emailVerifyCode = _value;
  }

  bool _emailVerified = false;
  bool get emailVerified => _emailVerified;
  set emailVerified(bool _value) {
    _emailVerified = _value;
  }

  String _givenName = '';
  String get givenName => _givenName;
  set givenName(String _value) {
    _givenName = _value;
  }

  String _familyName = '';
  String get familyName => _familyName;
  set familyName(String _value) {
    _familyName = _value;
  }

  String _accessTokenFrollo = '';
  String get accessTokenFrollo => _accessTokenFrollo;
  set accessTokenFrollo(String _value) {
    _accessTokenFrollo = _value;
  }

  String _refreshTokenFrollo = '';
  String get refreshTokenFrollo => _refreshTokenFrollo;
  set refreshTokenFrollo(String _value) {
    _refreshTokenFrollo = _value;
  }

  int _expiresIn = 0;
  int get expiresIn => _expiresIn;
  set expiresIn(int _value) {
    _expiresIn = _value;
  }

  int _createdAt = 0;
  int get createdAt => _createdAt;
  set createdAt(int _value) {
    _createdAt = _value;
  }

  DocumentReference? _frolloUserRef;
  DocumentReference? get frolloUserRef => _frolloUserRef;
  set frolloUserRef(DocumentReference? _value) {
    _frolloUserRef = _value;
  }

  String _BasiqId = '';
  String get BasiqId => _BasiqId;
  set BasiqId(String _value) {
    _BasiqId = _value;
    prefs.setString('ff_BasiqId', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
