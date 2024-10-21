import 'package:moulai1/connect_bank/connect_bank_widget.dart';

import '../providers/auth_provider.dart';
import '../sign_up_with_email/sign_up_with_email_widget.dart';
import '/auth/auth_util.dart';
import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'sign_up_model.dart';
export 'sign_up_model.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

//first screen
class _SignUpWidgetState extends State<SignUpWidget> {
  late SignUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // context.watch<FFAppState>();
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      key: scaffoldKey,
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
                        updateCallback: () => print('--'),
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
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            SignUpWithEmailWidget()),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40.0, 0.0, 40.0, 45.0),
                                  child: Image.asset(
                                    'assets/images/tabler_mail.png',
                                    width: 59.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  '2 simple steps to find your deductions',
                                  textAlign: TextAlign.center,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 20.0, 16.0, 60.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 151.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Color(0xFFA5A5A5),
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            40.0, 28.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Image.asset(
                                              'assets/images/Ellipse_21.png',
                                              width: 32.0,
                                              height: 32.0,
                                              fit: BoxFit.cover,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Sign up',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFA5A5A5),
                                                          fontSize: 17.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            43.0, 92.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Image.asset(
                                              'assets/images/Vector@2x.png',
                                              width: 26.0,
                                              height: 32.0,
                                              fit: BoxFit.cover,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Connect your statements',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFA5A5A5),
                                                          fontSize: 17.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            47.0, 30.0, 0.0, 0.0),
                                        child: Text(
                                          'm.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFBEF397),
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            55.0, 60.0, 0.0, 0.0),
                                        child: Image.asset(
                                          'assets/images/Line_10.png',
                                          width: 2.0,
                                          height: 32.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'By continuing agree to logo ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFA5A5A5),
                                              fontSize: 13.0,
                                            ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          context.pushNamed(
                                            'PrivacyPolicy',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 500),
                                              ),
                                            },
                                          );
                                        },
                                        child: Text(
                                          'Privacy Policy',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFA5A5A5),
                                                fontSize: 13.0,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        ' & ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFA5A5A5),
                                              fontSize: 13.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      context.pushNamed(
                                        'TermsofService',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 500),
                                          ),
                                        },
                                      );
                                    },
                                    child: Text(
                                      'Terms of service.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFA5A5A5),
                                            fontSize: 13.0,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                    ),
                                  ),
                                ],
                              ),

                              // Padding(
                              //     padding: EdgeInsetsDirectional.fromSTEB(
                              //         16.0, 16.0, 16.0, 16.0),
                              //   child: GestureDetector(
                              //     onTap: () async {
                              //       final user =
                              //       await signInWithGoogle(context);
                              //       if (user == null) {
                              //         print('user null null null ');
                              //         return;
                              //       } else {
                              //         authProvider.email = user.email;
                              //         authProvider.userName =
                              //             user.displayName;
                              //         authProvider.last_name =
                              //             user.displayName;
                              //         authProvider.first_name =
                              //             user.displayName;
                              //         //  user.email,
                              //         await authProvider
                              //             .signUp(context, 1);
                              //         //     .then((value) async {
                              //         //   print('value!!!!!!!!!!!!!!!!!!!:$value');
                              //         //   if (value == true) {
                              //         //     Future.delayed(Duration(seconds: 3)).then((value)async {
                              //         //       Navigator.push(
                              //         //         context,
                              //         //         MaterialPageRoute(
                              //         //             builder: (_) =>
                              //         //                 ConnectBankWidget()),
                              //         //       );
                              //         //     });
                              //         //
                              //         //   }
                              //         // });
                              //       }
                              //     },
                              //     child: Container(
                              //       alignment: Alignment.center,
                              //       decoration: BoxDecoration(
                              //         color: Colors.white,
                              //
                              //         borderRadius:
                              //         BorderRadius.circular(8.0),
                              //       ),
                              //       width: double.infinity,
                              //       height: 60.0,
                              //       padding: EdgeInsetsDirectional.fromSTEB(
                              //           0.0, 0.0, 0.0, 0.0),
                              //       child: Row(
                              //         mainAxisAlignment: MainAxisAlignment.center,
                              //         children: [
                              //           Align(
                              //             alignment: Alignment.center,
                              //             child: Padding(
                              //               padding: EdgeInsetsDirectional.fromSTEB(
                              //                   0.0, 0.0, 12.0, 0.0),
                              //               child: SvgPicture.asset(
                              //                 'assets/images/googlemark.svg',
                              //                 width: 25.0,
                              //                 height: 26.0,
                              //                 fit: BoxFit.cover,
                              //               ),
                              //             ),
                              //           ),
                              //           Text('Continue With Google', style: FlutterFlowTheme.of(context)
                              //               .titleSmall
                              //               .override(
                              //             fontFamily: 'Poppins',
                              //             color: Color(0xFF0D0E0F),
                              //             fontSize: 18.0,
                              //             fontWeight: FontWeight.bold,
                              //           ),)
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: Column(
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            final user =
                                                await signInWithGoogle(context);
                                            if (user == null) {
                                              return;
                                            } else {
                                              authProvider.email = user.email;
                                              authProvider.userName =
                                                  user.displayName;
                                              authProvider.last_name =
                                                  user.displayName;
                                              authProvider.first_name =
                                                  user.displayName;
                                              //  user.email,
                                              await authProvider.signUp(
                                                  context, 1);

                                              //     .then((value) async {
                                              //   print('value!!!!!!!!!!!!!!!!!!!:$value');
                                              //   if (value == true) {
                                              //     Future.delayed(Duration(seconds: 3)).then((value)async {
                                              //        Navigator.push(
                                              //         context,
                                              //         MaterialPageRoute(
                                              //             builder: (_) =>
                                              //                 ConnectBankWidget()),
                                              //       );
                                              //     });
                                              //
                                              //   }
                                              // });
                                            }
                                          },
                                          text: 'Continue With Google',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 60.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF0D0E0F),
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                      ],
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
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 16.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        final user =
                                            await signInWithApple(context);

                                        print('user: ${user.toString()}');
                                        if (user == null) {
                                          return;
                                        } else {
                                          authProvider.email = user.email;
                                          authProvider.userName = appleName;
                                          authProvider.last_name = appleName;
                                          authProvider.first_name = appleName;
                                          print('FFButtonWidget: $appleName');
                                          //  user.email,
                                          authProvider.signUp(context, 1);
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
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => SignUpWithEmailWidget(),
                                      ),
                                    );
                                    // context.pushNamed(
                                    //   'SignUpWithEmail',
                                    //   extra: <String, dynamic>{
                                    //     kTransitionInfoKey: TransitionInfo(
                                    //       hasTransition: true,
                                    //       transitionType:
                                    //           PageTransitionType.rightToLeft,
                                    //       duration: Duration(milliseconds: 500),
                                    //     ),
                                    //   },
                                    // );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Continue with email',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.arrow_forward_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          size: 24.0,
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
