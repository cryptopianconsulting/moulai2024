import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class SelectWorkForModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox1 widget.
  bool? checkbox1Value;
  // State field(s) for Checkbox2 widget.
  bool? checkbox2Value;
  // State field(s) for Checkbox3 widget.
  bool? checkbox3Value;
  // State field(s) for Checkbox4 widget.
  bool? checkbox4Value;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
