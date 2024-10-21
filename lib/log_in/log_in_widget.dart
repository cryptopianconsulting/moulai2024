import 'package:moulai1/loader.dart';

import '../providers/auth_provider.dart';
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
import 'log_in_model.dart';
export 'log_in_model.dart';
import 'dart:io' show Platform;

class LogInWidget extends StatefulWidget {
  const LogInWidget({Key? key}) : super(key: key);

  @override
  _LogInWidgetState createState() => _LogInWidgetState();
}

class _LogInWidgetState extends State<LogInWidget> {
  late LogInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogInModel());

    _model.inputEmailController ??= TextEditingController();
    _model.inputPasswordController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  String? validateEmail(String? value, {bool allowEmpty = false}) {
    if (value == null) return 'Invalid email address';
    if (value.isEmpty && allowEmpty) return null;
    final isValid = value.contains('@') && value.contains('.');
    if (!isValid) return 'Invalid email address';
    return null;
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      wrapWithModel(
                        model: _model.appBarModel,
                        updateCallback: () => setState(() {}),
                        child: AppBarWidget(),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40.0, 0.0, 40.0, 45.0),
                                child: Image.asset(
                                  'assets/images/tabler_mail.png',
                                  width: 59.0,
                                  height: 55.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Enter your registered email',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              Form(
                                key: formKey,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.inputEmailController,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFA5A5A5),
                                            fontSize: 16.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFA5A5A5),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFF202020),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                        ),
                                    validator: validateEmail,
                                  ),
                                ),
                              ),
                              // Padding(
                              //   padding: EdgeInsetsDirectional.fromSTEB(
                              //       16.0, 0.0, 16.0, 16.0),
                              //   child: TextFormField(
                              //     controller: _model.inputPasswordController,
                              //     autofocus: true,
                              //     obscureText: !_model.inputPasswordVisibility,
                              //     decoration: InputDecoration(
                              //       hintText: 'Password',
                              //       hintStyle: FlutterFlowTheme.of(context)
                              //           .bodySmall
                              //           .override(
                              //             fontFamily: 'Poppins',
                              //             color: Color(0xFFA5A5A5),
                              //             fontSize: 16.0,
                              //           ),
                              //       enabledBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //           color: Color(0x00000000),
                              //           width: 1.0,
                              //         ),
                              //         borderRadius: BorderRadius.circular(8.0),
                              //       ),
                              //       focusedBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //           color: Color(0xFFA5A5A5),
                              //           width: 1.0,
                              //         ),
                              //         borderRadius: BorderRadius.circular(8.0),
                              //       ),
                              //       errorBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //           color: Color(0x00000000),
                              //           width: 1.0,
                              //         ),
                              //         borderRadius: BorderRadius.circular(8.0),
                              //       ),
                              //       focusedErrorBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //           color: Color(0x00000000),
                              //           width: 1.0,
                              //         ),
                              //         borderRadius: BorderRadius.circular(8.0),
                              //       ),
                              //       filled: true,
                              //       fillColor: Color(0xFF202020),
                              //       suffixIcon: InkWell(
                              //         onTap: () => setState(
                              //           () => _model.inputPasswordVisibility =
                              //               !_model.inputPasswordVisibility,
                              //         ),
                              //         focusNode: FocusNode(skipTraversal: true),
                              //         child: Icon(
                              //           _model.inputPasswordVisibility
                              //               ? Icons.visibility_outlined
                              //               : Icons.visibility_off_outlined,
                              //           color: Color(0xFF757575),
                              //           size: 22.0,
                              //         ),
                              //       ),
                              //     ),
                              //     style: FlutterFlowTheme.of(context)
                              //         .bodyMedium
                              //         .override(
                              //           fontFamily: 'Poppins',
                              //           color: FlutterFlowTheme.of(context)
                              //               .primaryBtnText,
                              //         ),
                              //     validator: _model
                              //         .inputPasswordControllerValidator
                              //         .asValidator(context),
                              //   ),
                              // ),
                              authProvider.loading == true
                                  ?loader()
                                  : Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 53.0, 16.0, 57.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                          if (formKey.currentState!
                                              .validate()) {
                                            authProvider.email = _model
                                                .inputEmailController.text;
                                            authProvider.login(
                                                context,
                                                _model
                                                    .inputEmailController.text,
                                                0);
                                          }
                                        },
                                        text: 'Continue',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 60.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFFBEF397),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF0D0E0F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 2.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      height: 1.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFA5A5A5),
                                      ),
                                    ),
                                    Text(
                                      'or',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      height: 1.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFA5A5A5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        final user =
                                            await signInWithGoogle(context);
                                        if (user == null) {
                                          return;
                                        } else {
                                          authProvider.login(
                                              context, user.email, 1);
                                          print(user.phoneNumber.toString() +
                                              'heeeey');
                                        }
                                      },
                                      text: 'Continue With Google',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 60.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF0D0E0F),
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 2.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.7, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/googlemark.svg',
                                        width: 25.0,
                                        height: 26.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Platform.isIOS
                              //     ?
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 16.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        // GoRouter.of(context)
                                        //     .prepareAuthEvent();
                                        final user =
                                            await signInWithApple(context);
                                        if (user == null) {
                                          return;
                                        } else {
                                          authProvider.login(
                                              context, user.email, 1);
                                          print(user.phoneNumber.toString() +
                                              'heeeey');
                                        }
                                      },
                                      text: 'Continue With Apple',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 60.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF0D0E0F),
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 2.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.7, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 14.0, 0.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/applemark.svg',
                                        width: 20.0,
                                        height: 25.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
