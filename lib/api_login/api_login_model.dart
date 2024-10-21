import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class ApiLoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for userIdLogin widget.
  TextEditingController? userIdLoginController;
  String? Function(BuildContext, String?)? userIdLoginControllerValidator;
  // State field(s) for passwordLogin widget.
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLoginVisibility = false;
  }

  void dispose() {
    userIdLoginController?.dispose();
    passwordLoginController?.dispose();
  }

  /// Additional helper methods are added here.

}
