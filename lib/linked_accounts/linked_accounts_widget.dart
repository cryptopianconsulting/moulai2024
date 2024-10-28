import 'dart:developer';

import 'package:moulai1/auth/auth_util.dart';
import 'package:moulai1/loader.dart';

import '../models/Linkedaccounts.dart';
import '../providers/auth_provider.dart';
import '../web_view_screen.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'linkedAccountDetails.dart';
import 'linked_accounts_model.dart';
export 'linked_accounts_model.dart';

class LinkedAccountsWidget extends StatefulWidget {
  const LinkedAccountsWidget({Key? key}) : super(key: key);

  @override
  _LinkedAccountsWidgetState createState() => _LinkedAccountsWidgetState();
}

class _LinkedAccountsWidgetState extends State<LinkedAccountsWidget> {
  late LinkedAccountsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((t) {
      _model = createModel(context, () => LinkedAccountsModel());
      final authProviderr = Provider.of<AuthProvider>(context, listen: false);
      authProviderr.getUserAccounts();
    });
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final authProvider = Provider.of<AuthProvider>(
      context,
    );
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: authProvider.loading == true
          ? loader()
          : SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 30.0, 0.0, 0.0),
                          child: InkWell(
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.keyboard_arrow_left_outlined,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 22.0, 20.0, 0.0),
                          child: ((authProvider.accounts) != null &&
                                  ((authProvider.accounts!.data ?? [])
                                      .isNotEmpty))
                              ? Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: Text(
                                          'Linked accounts (${authProvider.accounts!.data!.length})',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFDBEBFD),
                                                fontSize: 23.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .56,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: authProvider
                                              .accounts!.data!.length,
                                          itemBuilder:
                                              (BuildContext context, int i) {
                                            Datum item =
                                                authProvider.accounts!.data![i];
                                            return Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1.0,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFF3C3C3C),
                                                    Color(0xFF202020)
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin: AlignmentDirectional(
                                                      0.0, -1.0),
                                                  end: AlignmentDirectional(
                                                      0, 1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  11.0,
                                                                  12.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/images/americanExpress.svg',
                                                            width: 29.0,
                                                            height: 29.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        .45,
                                                                    child: Text(
                                                                      // authProvider.accounts!.data![0]
                                                                      item.name
                                                                          .toString(),
                                                                      // 'AMERICAN EXPRE..',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  // Text(
                                                                  //   // authProvider.accounts!.data![0]
                                                                  //   item.accountHolder
                                                                  //       .toString(),
                                                                  //   // 'AMERICAN EXPRE..',
                                                                  //   style:
                                                                  //       FlutterFlowTheme.of(
                                                                  //               context)
                                                                  //           .bodyMedium
                                                                  //           .override(
                                                                  //             fontFamily:
                                                                  //                 'Poppins',
                                                                  //             color: FlutterFlowTheme.of(
                                                                  //                     context)
                                                                  //                 .primaryBtnText,
                                                                  //             fontSize:
                                                                  //                 14.0,
                                                                  //             fontWeight:
                                                                  //                 FontWeight
                                                                  //                     .w600,
                                                                  //           ),
                                                                  // ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          25.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Business & Personal',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFFA5A5A5),
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    15.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/wpf_sim-card-chip.svg',
                                                          width: 39.0,
                                                          height: 33.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  14.0,
                                                                  31.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              // Align(
                                                              //   alignment:
                                                              //       AlignmentDirectional(
                                                              //           -1.0, 0.0),
                                                              //   child: Padding(
                                                              //     padding:
                                                              //         EdgeInsetsDirectional
                                                              //             .fromSTEB(
                                                              //                 0.0,
                                                              //                 5.0,
                                                              //                 0.0,
                                                              //                 0.0),
                                                              //     child: Text(
                                                              //       'American Express credit card ac...',
                                                              //       style:
                                                              //           FlutterFlowTheme.of(
                                                              //                   context)
                                                              //               .bodyMedium
                                                              //               .override(
                                                              //                 fontFamily:
                                                              //                     'Poppins',
                                                              //                 color: FlutterFlowTheme.of(
                                                              //                         context)
                                                              //                     .primaryBtnText,
                                                              //               ),
                                                              //     ),
                                                              //   ),
                                                              // ),
                                                              SizedBox(
                                                                height: 9,
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  // Image.asset(
                                                                  //   'assets/images/dotGroup.png',
                                                                  //   width: 32.0,
                                                                  //   height: 5.0,
                                                                  //   fit: BoxFit.cover,
                                                                  // ),
                                                                  // Padding(
                                                                  //   padding:
                                                                  //       EdgeInsetsDirectional
                                                                  //           .fromSTEB(
                                                                  //               10.0,
                                                                  //               0.0,
                                                                  //               10.0,
                                                                  //               0.0),
                                                                  //   child: Image.asset(
                                                                  //     'assets/images/dotGroup.png',
                                                                  //     width: 32.0,
                                                                  //     height: 5.0,
                                                                  //     fit: BoxFit.cover,
                                                                  //   ),
                                                                  // ),
                                                                  // Image.asset(
                                                                  //   'assets/images/dotGroup.png',
                                                                  //   width: 32.0,
                                                                  //   height: 5.0,
                                                                  //   fit: BoxFit.cover,
                                                                  // ),

                                                                  SizedBox(
                                                                    height: 9,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Text(
                                                                            item.availableFunds == null
                                                                                ? 0.0.toString()
                                                                                : item.availableFunds.toString(),
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Color(0xFFA5A5A5),
                                                                                  fontSize: 15.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                  lineHeight: 1.2,
                                                                                ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                1,
                                                                          ),
                                                                          Text(
                                                                            item.currency.toString(),
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Color(0xFFA5A5A5),
                                                                                  fontSize: 15.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                  lineHeight: 1.2,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  // Image.asset(
                                                                  //   'assets/images/dotGroup.png',
                                                                  //   width: 32.0,
                                                                  //   height: 5.0,
                                                                  //   fit: BoxFit.cover,
                                                                  // ),
                                                                  // Padding(
                                                                  //   padding:
                                                                  //       EdgeInsetsDirectional
                                                                  //           .fromSTEB(
                                                                  //               10.0,
                                                                  //               0.0,
                                                                  //               10.0,
                                                                  //               0.0),
                                                                  //   child: Image.asset(
                                                                  //     'assets/images/dotGroup.png',
                                                                  //     width: 32.0,
                                                                  //     height: 5.0,
                                                                  //     fit: BoxFit.cover,
                                                                  //   ),
                                                                  // ),
                                                                  // Image.asset(
                                                                  //   'assets/images/dotGroup.png',
                                                                  //   width: 32.0,
                                                                  //   height: 5.0,
                                                                  //   fit: BoxFit.cover,
                                                                  // ),

                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          const Text(
                                                                            ' *  *  *  *  *  *  *  ',
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w700,
                                                                                fontSize: 13,
                                                                                color: Colors.grey),
                                                                          ),
                                                                          Text(
                                                                              item.accountNo!.substring(item.accountNo!.length - 4, item.accountNo!.length),
                                                                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18, color: Colors.grey))
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          IconButton(
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder: (_) =>
                                                                      CreditCardPage(
                                                                          item:
                                                                              item),
                                                                ),
                                                              );
                                                            },
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_right,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ],
                                )
                              : Center(
                                  child: Text(
                                    "Empty",
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFDBEBFD),
                                          fontSize: 23.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            String? basiqUrl = await authProvider.getBasiqURL(
                                context,
                                phoneNumber: currentPhoneNumber);

                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => WebViewScreen(
                                  url: basiqUrl,
                                ),
                              ),
                            );
                          },
                          text: 'Link a new account',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 58.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
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
                ),
              ),
            ),
    );
  }
}
