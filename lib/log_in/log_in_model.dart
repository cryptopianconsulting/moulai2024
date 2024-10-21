import '/auth/auth_util.dart';
import '/auth/firebase_user_provider.dart';
import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LogInModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for InputEmail widget.
  TextEditingController? inputEmailController;
  String? Function(BuildContext, String?)? inputEmailControllerValidator;
  // State field(s) for InputPassword widget.
  TextEditingController? inputPasswordController;
  late bool inputPasswordVisibility;
  String? Function(BuildContext, String?)? inputPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    inputPasswordVisibility = false;
  }

  void dispose() {
    appBarModel.dispose();
    inputEmailController?.dispose();
    inputPasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
