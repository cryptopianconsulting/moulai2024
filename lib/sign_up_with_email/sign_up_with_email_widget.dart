import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../confirm_legal_name/confirm_legal_name_widget.dart';
import '../providers/auth_provider.dart';
import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sign_up_with_email_model.dart';
export 'sign_up_with_email_model.dart';

class SignUpWithEmailWidget extends StatefulWidget {
  const SignUpWithEmailWidget({Key? key}) : super(key: key);

  @override
  _SignUpWithEmailWidgetState createState() => _SignUpWithEmailWidgetState();
}

class _SignUpWithEmailWidgetState extends State<SignUpWithEmailWidget> {
  late SignUpWithEmailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpWithEmailModel());

    _model.emailTextController ??= TextEditingController();
    _model.passwordTextController ??= TextEditingController();
    _model.confirmPasswordTextController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  static String? validPhoneNum(String? value) {
    if (value == null) {
      return "Please, enter a valid Phone Number";
    }
    final isValid = value.isNotEmpty;
    if (!isValid) {
      return "Please, enter a valid Phone Number";
    }
    if (value.length != 10) {
      return 'Must be at least 10 num';
    }
    final isCorrectLength = value.length == 10;
    if (!isCorrectLength) {
      return 'Must be at least 10 num';
    }
    return null;
  }

  String? validateEmail(String? value, {bool allowEmpty = false}) {
    if (value == null) return 'Enter a valid email address';
    if (value.isEmpty && allowEmpty) return null;
    final isValid = value.contains('@') && value.contains('.');
    if (!isValid) return 'Invalid email address';
    return null;
  }

  /// Format the user phone number to look like (123) 456-7890
  String formatPhoneNumber(String phoneNumber) {
    /// Remove all non-digit characters from the phone number
    phoneNumber.replaceAll(RegExp(r'\d'), '');

    /// Check that the phone number has 10 digits
    if (phoneNumber.length != 10) {
      return phoneNumber;
    }

    /// Format the phone number
    final formattedPhoneNumber = '(${phoneNumber.substring(0, 3)}) '
        '${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    return formattedPhoneNumber;
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final authProvider = Provider.of<AuthProvider>(
      context,
    );
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                wrapWithModel(
                  model: _model.appBarModel,
                  updateCallback: () => setState(() {}),
                  child: AppBarWidget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 0.0, 40.0, 45.0),
                        child: Image.asset(
                          'assets/images/tabler_mail_(2).png',
                          width: 60.0,
                          height: 58.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Text(
                            'Enter your Email Address & Phone Number',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                      Form(
                        key: formKey,
                        // autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Email and Phone Number are required to create your tax profile.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 17.0,
                                      ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Email Address',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 17.0,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 12.0),
                              child: TextFormField(
                                controller: _model.emailTextController,
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
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFA5A5A5),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFF202020),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                keyboardType: TextInputType.emailAddress,
                                validator: validateEmail,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Phone Number',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFA5A5A5),
                                            fontSize: 17.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 12.0),
                              child: IntlPhoneField(
                                controller: _model.phoneController,
                                initialCountryCode: 'US',
                                onChanged: (v) {
                                  authProvider.phone_number = v.completeNumber;
                                  setState(() {});
                                  log(v.completeNumber);
                                },
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Ex: 0476324732',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 16.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffffffff),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFA5A5A5),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffffffff),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFF202020),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 20.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        FocusManager.instance.primaryFocus?.unfocus();
                        if (formKey.currentState!.validate()) {
                          authProvider.email = _model.emailTextController.text;

                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ConfirmLegalNameWidget(),
                            ),
                          );
                          //third screen
                          // context.pushNamedAuth(
                          //   'ConnectBank',
                          //   mounted,
                          //   extra: <String, dynamic>{
                          //     kTransitionInfoKey: TransitionInfo(
                          //       hasTransition: true,
                          //       transitionType:
                          //           PageTransitionType.rightToLeft,
                          //       duration: Duration(milliseconds: 500),
                          //     ),
                          //   },
                          // );
                        }
                      },
                      text: 'Sign up',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 63.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFBEF397),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
