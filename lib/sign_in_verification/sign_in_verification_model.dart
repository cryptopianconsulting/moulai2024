import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class SignInVerificationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    pinCodeController = TextEditingController();
  }

  void dispose() {
    appBarModel.dispose();
    pinCodeController?.dispose();
  }

  /// Additional helper methods are added here.

}
