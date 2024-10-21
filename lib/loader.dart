import 'package:flutter/cupertino.dart';

Widget loader({double width = 50}) {
  return Center(
    child: Image.asset(
      'assets/images/load.gif',
      width: width,
      height: width,
    ),
  );
}
