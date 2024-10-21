import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String? generateVerifyCode() {
  // generate random 6 number code
  var rng = new math.Random();
  var code = rng.nextInt(999999 - 100000);
  return code.toString();
}

String? getName(
  String? name,
  int position,
) {
  if (name != null) {
    List names = name.trim().split(" ").toList();
    if (position == 0) {
      return names[position];
    } else if (position > 0) {
      if (names.length > 1) {
        return names[position];
      } else {
        return "";
      }
    }
  } else {
    return "";
  }
}

String? getConnectUrl(String? ab) {
  return "https://consent.basiq.io/home?token=" + (ab ?? "");
}
