import 'package:moulai1/auth/auth_util.dart';
import 'package:moulai1/index.dart';
import 'package:moulai1/loader.dart';
import 'package:moulai1/providers/auth_provider.dart';

import '../flutter_flow/flutter_flow_widgets.dart';
import '../web_view_screen.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'connect_bank_model.dart';
export 'connect_bank_model.dart';

class ConnectBankWidget extends StatefulWidget {
  const ConnectBankWidget({Key? key}) : super(key: key);

  @override
  _ConnectBankWidgetState createState() => _ConnectBankWidgetState();
}

class _ConnectBankWidgetState extends State<ConnectBankWidget> {
  late ConnectBankModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  TextEditingController? phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((t) {
      _model = createModel(context, () => ConnectBankModel());
      final authProviderr = Provider.of<AuthProvider>(context, listen: false);
      repeatCheckBank();
    });
  }

  Future<void> repeatCheckBank() async {
    print('object');
    final authProviderr = Provider.of<AuthProvider>(context, listen: false);

    bool hasAccount = await authProviderr.getUserAccounts();
    if (hasAccount) {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => AccountLinkedWidget(),
        ),
      );
    } else {
      await Future.delayed(Duration(seconds: 5));
      // repeatCheckBank();
    }
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      GradientText(
                        'moulai.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 30.0,
                              fontWeight: FontWeight.w500,
                            ),
                        colors: [
                          Color(0xFFBEF397),
                          FlutterFlowTheme.of(context).primaryBtnText
                        ],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.9, 0.0),
                        child: FlutterFlowIconButton(
                          fillColor: Colors.white,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                            signOut().then((t) => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePageWidget()),
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: Text(
                                'Let’s fetch your expenses',
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
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'for A.I. to find deductions ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFA5A5A5),
                                    fontSize: 17.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 54.0,
                            height: 51.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFBEF397),
                              borderRadius: BorderRadius.circular(54.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'm.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Image.asset(
                              'assets/images/Group_37.png',
                              width: 26.0,
                              height: 7.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Image.asset(
                            'assets/images/mdi_security-lock-outline_(1).png',
                            width: 80.0,
                            height: 90.0,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Image.asset(
                              'assets/images/Group_38.png',
                              width: 27.0,
                              height: 7.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/images/accountbalance.svg',
                            width: 46.0,
                            height: 46.0,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 10.0, 16.0, 0.0),
                                child: InkWell(
                                  onTap: () async {
                                    setState(() {
                                      // FFAppState().frolloUserRef =
                                      //     connectBankFrolloUsersRecord!
                                      //         .reference;
                                    });

                                    final frolloUsersUpdateData =
                                        createFrolloUsersRecordData(
                                      tokenCreate: true,
                                    );
                                    await FFAppState()
                                        .frolloUserRef!
                                        .update(frolloUsersUpdateData);

                                    context.pushNamed(
                                      'BankLinkConsent',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 500),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 67.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF202020),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0xFFBEF397),
                                          offset: Offset(0.0, 0.0),
                                          spreadRadius: 0.0,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: InkWell(
                                        onTap: () async {
                                          //   var _shouldSetState = false;
                                          //   _model.apiResult6qi =
                                          //       await GetBasiqTokenCall.call();
                                          //   _shouldSetState = true;
                                          //   if ((_model.apiResult6qi?.succeeded ??
                                          //       true)) {
                                          //     ScaffoldMessenger.of(context)
                                          //         .showSnackBar(
                                          //       SnackBar(
                                          //         content: Text(
                                          //           'token gotten',
                                          //           style: TextStyle(
                                          //             color: FlutterFlowTheme.of(
                                          //                     context)
                                          //                 .primaryText,
                                          //           ),
                                          //         ),
                                          //         duration: Duration(
                                          //             milliseconds: 4000),
                                          //         backgroundColor:
                                          //             FlutterFlowTheme.of(context)
                                          //                 .secondary,
                                          //       ),
                                          //     );
                                          //     _model.apiResult7tl =
                                          //         await GetBasiqUserCall.call(
                                          //       token: getJsonField(
                                          //         (_model.apiResult6qi
                                          //                 ?.jsonBody ??
                                          //             ''),
                                          //         r'''$.access_token''',
                                          //       ).toString(),
                                          //       email: 'anjie167@gmail.com',
                                          //       mobile: '+614xxxxxxxx',
                                          //     );
                                          //     _shouldSetState = true;
                                          //     if ((_model
                                          //             .apiResult7tl?.succeeded ??
                                          //         true)) {
                                          //       ScaffoldMessenger.of(context)
                                          //           .showSnackBar(
                                          //         SnackBar(
                                          //           content: Text(
                                          //             'user gotten',
                                          //             style: TextStyle(
                                          //               color:
                                          //                   FlutterFlowTheme.of(
                                          //                           context)
                                          //                       .primaryText,
                                          //             ),
                                          //           ),
                                          //           duration: Duration(
                                          //               milliseconds: 4000),
                                          //           backgroundColor:
                                          //               FlutterFlowTheme.of(
                                          //                       context)
                                          //                   .secondary,
                                          //         ),
                                          //       );
                                          //       _model.clientToken =
                                          //           await GetClientAccessTokenCall
                                          //               .call(
                                          //         userID: getJsonField(
                                          //           (_model.apiResult7tl
                                          //                   ?.jsonBody ??
                                          //               ''),
                                          //           r'''$.id''',
                                          //         ).toString(),
                                          //       );
                                          //       _shouldSetState = true;
                                          //       if ((_model
                                          //               .clientToken?.succeeded ??
                                          //           true)) {
                                          //         await launchURL(functions
                                          //             .getConnectUrl(getJsonField(
                                          //           (_model.clientToken
                                          //                   ?.jsonBody ??
                                          //               ''),
                                          //           r'''$.access_token''',
                                          //         ).toString())!);
                                          //       } else {
                                          //         ScaffoldMessenger.of(context)
                                          //             .showSnackBar(
                                          //           SnackBar(
                                          //             content: Text(
                                          //               getJsonField(
                                          //                 (_model.clientToken
                                          //                         ?.jsonBody ??
                                          //                     ''),
                                          //                 r'''$''',
                                          //               ).toString(),
                                          //               style: TextStyle(
                                          //                 color:
                                          //                     FlutterFlowTheme.of(
                                          //                             context)
                                          //                         .primaryText,
                                          //               ),
                                          //             ),
                                          //             duration: Duration(
                                          //                 milliseconds: 4000),
                                          //             backgroundColor:
                                          //                 FlutterFlowTheme.of(
                                          //                         context)
                                          //                     .secondary,
                                          //           ),
                                          //         );
                                          //       }
                                          //     } else {
                                          //       ScaffoldMessenger.of(context)
                                          //           .showSnackBar(
                                          //         SnackBar(
                                          //           content: Text(
                                          //             getJsonField(
                                          //               (_model.apiResult7tl
                                          //                       ?.jsonBody ??
                                          //                   ''),
                                          //               r'''$''',
                                          //             ).toString(),
                                          //             style: TextStyle(
                                          //               color:
                                          //                   FlutterFlowTheme.of(
                                          //                           context)
                                          //                       .primaryText,
                                          //             ),
                                          //           ),
                                          //           duration: Duration(
                                          //               milliseconds: 4000),
                                          //           backgroundColor:
                                          //               FlutterFlowTheme.of(
                                          //                       context)
                                          //                   .secondary,
                                          //         ),
                                          //       );
                                          //       if (_shouldSetState)
                                          //         setState(() {});
                                          //       return;
                                          //     }
                                          //   } else {
                                          //     ScaffoldMessenger.of(context)
                                          //         .showSnackBar(
                                          //       SnackBar(
                                          //         content: Text(
                                          //           getJsonField(
                                          //             (_model.apiResult6qi
                                          //                     ?.jsonBody ??
                                          //                 ''),
                                          //             r'''$''',
                                          //           ).toString(),
                                          //           style: TextStyle(
                                          //             color: FlutterFlowTheme.of(
                                          //                     context)
                                          //                 .primaryText,
                                          //           ),
                                          //         ),
                                          //         duration: Duration(
                                          //             milliseconds: 4000),
                                          //         backgroundColor:
                                          //             FlutterFlowTheme.of(context)
                                          //                 .secondary,
                                          //       ),
                                          //     );
                                          //     if (_shouldSetState)
                                          //       setState(() {});
                                          //     return;
                                          //   }

                                          //   if (_shouldSetState) setState(() {});
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.radio_button_checked,
                                              color: Color(0xFFBEF397),
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Connect your statements',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 102.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBEF397),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0xFFBEF397),
                                        offset: Offset(0.0, 0.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Recommended',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          authProvider.weareInThirdParty == true
                              ? Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Phone Number',
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
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 12.0),
                                      child: TextFormField(
                                        controller: phoneController,
                                        autofocus: true,
                                        onChanged: (v) {
                                          authProvider.phone_number = v;
                                        },
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Ex: 0476324732',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
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
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFF202020),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please, enter a valid Phone Number";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                        ],
                      ),
                      authProvider.loading == true
                          ? loader()
                          : Column(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      String? basiqUrl =
                                          await authProvider.getBasiqURL(
                                        context,
                                        phoneNumber: phoneController.text,
                                      );
                                      print('basiqUrl: $basiqUrl');
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => WebViewScreen(
                                            url: basiqUrl,
                                          ),
                                        ),
                                      ).then((value) async {
                                        if (value == true) {
                                          showLoader = value;
                                          setState(() {});
                                          if (showLoader == true)
                                            showLoaderDialog();
                                          await repeatCheckBank();
                                          showLoader = !value;
                                          setState(() {});
                                          if (showLoader == false)
                                            Navigator.pop(context);
                                        }
                                      });
                                    },
                                    text: 'Connect ',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 63.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFBEF397),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF0D0E0F),
                                            fontSize: 17.0,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool? showLoader;

  showLoaderDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(horizontal: 150),
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
      ),
    );
  }
}
