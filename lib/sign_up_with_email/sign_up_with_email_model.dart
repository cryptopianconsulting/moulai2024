import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class SignUpWithEmailModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for TextField widget.
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  TextEditingController? phoneController;
  // State field(s) for TextField widget.
  TextEditingController? passwordTextController;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? confirmPasswordTextController;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // Stores action output result for [Backend Call - API (userRegisterToFrollo)] action in Button widget.
  ApiCallResponse? frolloSignResponse;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FrolloUsersRecord? outPut;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  void dispose() {
    appBarModel.dispose();
    emailTextController?.dispose();
    phoneController?.dispose();
    passwordTextController?.dispose();
    confirmPasswordTextController?.dispose();
  }

  /// Additional helper methods are added here.
}
