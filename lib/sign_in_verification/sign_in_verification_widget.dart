// ignore_for_file: must_be_immutable

import 'package:moulai1/connect_bank/connect_bank_widget.dart';
import 'package:moulai1/dashboard/dashboard_widget.dart';
import 'package:moulai1/providers/auth_provider.dart';

import '../welcome_back_page/welcome_back_page_widget.dart';
import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sign_in_verification_model.dart';
export 'sign_in_verification_model.dart';

class SignInVerificationWidget extends StatefulWidget {
  SignInVerificationWidget({required this.isFromRegister, Key? key})
      : super(key: key);
  bool? isFromRegister;

  @override
  _SignInVerificationWidgetState createState() =>
      _SignInVerificationWidgetState();
}

class _SignInVerificationWidgetState extends State<SignInVerificationWidget> {
  late SignInVerificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInVerificationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    context.watch<FFAppState>();

    return Scaffold(
      // key: scaffoldKey,
      backgroundColor: Color(0xFF0D0E0F),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView(
              // mainAxisSize: MainAxisSize.max,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                wrapWithModel(
                  model: _model.appBarModel,
                  updateCallback: () => setState(() {}),
                  child: AppBarWidget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/atimage.png',
                        width: 277.0,
                        height: 171.0,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF202020),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 39.0, 0.0, 0.0),
                          child: Text(
                            'Please enter the code',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 21.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 6.0, 0.0, 0.0),
                          child: Text(
                            'Verification code send to ${authProvider.email}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFA5A5A5),
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 22.0, 30.0, 0.0),
                        child: PinCodeTextField(
                          appContext: context,
                          length: 6,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Inter',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                              ),
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          enableActiveFill: true,
                          autoFocus: false,
                          showCursor: false,
                          cursorColor: Color(0xFFA5A5A5),
                          obscureText: false,
                          pinTheme: PinTheme(
                            fieldHeight: 52.0,
                            fieldWidth: 46.0,
                            borderWidth: 0.0,
                            borderRadius: BorderRadius.circular(6.0),
                            shape: PinCodeFieldShape.box,
                            activeColor: Color(0xFF202020),
                            inactiveColor: Color(0xFF202020),
                            selectedColor: Color(0xFF202020),
                            activeFillColor: Color(0xFF202020),
                            inactiveFillColor: Color(0xFF202020),
                            selectedFillColor: Color(0xFF202020),
                          ),
                          controller: _model.pinCodeController,
                          onChanged: (_) => {},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 5.0, 0.0, 100.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                'Didn’t receive the code?',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFFA5A5A5),
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  authProvider.login(
                                      context, authProvider.email, 0);
                                },
                                child: Text(
                                  'Resend it',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFBEF397),
                                      ),
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsetsDirectional.fromSTEB(
                            //       3.0, 0.0, 0.0, 0.0),
                            //   child: Text(
                            //     '(00:45)',
                            //     style: FlutterFlowTheme.of(context)
                            //         .bodyMedium
                            //         .override(
                            //           fontFamily: 'Roboto',
                            //           color: Color(0xFFA5A5A5),
                            //           fontSize: 17.0,
                            //           fontWeight: FontWeight.w300,
                            //         ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
              child: FFButtonWidget(
                onPressed: () async {
                  bool? success = await authProvider.varifyCode(
                      context, _model.pinCodeController.text);

                  if (success == true && widget.isFromRegister == true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ConnectBankWidget()),
                    );
                  } else if (success == true &&
                      widget.isFromRegister == false) {
                    bool? hasAccounts = await authProvider.getUserAccounts();

                    if (hasAccounts!) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => DashboardWidget()),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ConnectBankWidget()),
                      );
                    }
                  } else {
                    setState(() {
                      authProvider.loading = false;
                      print('authProvider.loading ${authProvider.loading}');
                    });
                    _model.pinCodeController!.clear();
                    FocusScope.of(context).requestFocus(_unfocusNode);
                  }
                },
                text: 'Approve & Continue',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFBEF397),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
