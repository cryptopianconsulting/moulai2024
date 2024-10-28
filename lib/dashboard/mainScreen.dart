import 'dart:developer';

import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moulai1/loader.dart';
import 'package:provider/provider.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../providers/auth_provider.dart';
import '../reviewed_page/reviewed_page_widget.dart';
import 'congratsScreen.dart';
import 'dashboard_model.dart';

class DashbaordMainScreen extends StatefulWidget {
  const DashbaordMainScreen();

  @override
  State<DashbaordMainScreen> createState() => _DashbaordMainScreenState();
}

const List<String> list = <String>['2023', '2022', '2021', '2020'];

class _DashbaordMainScreenState extends State<DashbaordMainScreen> {
  late DashboardModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  final formatCurrency = new NumberFormat.simpleCurrency();
  String? currentYear = '2023';
  String dropdownValue = '2023';

  void _openSimpleItemPicker(
    BuildContext context,
    AuthProvider authProvider,
    List<Text> items,
    VoidCallback onSelectedItem,
  ) {
    BottomPicker(
      // height: 250,
      items: items,
      selectedItemIndex: list.indexOf(authProvider.thevalue),
      pickerTitle: Text(
        'Choose the year',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      closeIconColor: FlutterFlowTheme.of(context).primaryBtnText,
      backgroundColor: Color(0xFF202020),
      bottomPickerTheme: BottomPickerTheme.morningSalad,
      onSubmit: (index) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = list[index];
          currentYear = list[index];
          authProvider.thevalue = list[index];
          authProvider.changeYear(context, list[index]);
          print(list[index]);

          onSelectedItem();
        });
      },
      pickerTextStyle: TextStyle(
        color: Color(0xFFBEF397),
        fontSize: 22,
      ),
      displayCloseIcon: true,

      // displayButtonIcon: true,
      displaySubmitButton: true,
      buttonSingleColor: Colors.grey[800],
      buttonContent: Text(
        'Pick',
        style: TextStyle(
          color: Color(0xFFBEF397),
          fontWeight: FontWeight.bold,
        ),
      ),
    ).show(context);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var s = context.watch<FFAppState>();

    final authProvider = Provider.of<AuthProvider>(context);
    dropdownValue = authProvider.thevalue;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: authProvider.loadingNewYearData == true
          ? loader()
          : SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // Stack(
                                        //   children: [
                                        //     Image.asset(
                                        //       'assets/images/profilePercent.png',
                                        //       width: 58.0,
                                        //       height: 58.0,
                                        //       fit: BoxFit.cover,
                                        //     ),
                                        //     Image.asset(
                                        //       'assets/images/profileRing.png',
                                        //       width: 58.0,
                                        //       height: 58.0,
                                        //       fit: BoxFit.cover,
                                        //     ),
                                        //     Padding(
                                        //       padding: EdgeInsetsDirectional
                                        //           .fromSTEB(
                                        //               20.0, 15.0, 0.0, 0.0),
                                        //       child: Text(
                                        //         authProviderr.userName!
                                        //             .substring(0, 2),
                                        //         style: FlutterFlowTheme.of(
                                        //                 context)
                                        //             .bodyMedium
                                        //             .override(
                                        //               fontFamily: 'Poppins',
                                        //               color: FlutterFlowTheme
                                        //                       .of(context)
                                        //                   .primaryBtnText,
                                        //               fontWeight:
                                        //                   FontWeight.bold,
                                        //             ),
                                        //       ),
                                        //     ),
                                        //     Align(
                                        //       alignment:
                                        //           AlignmentDirectional(
                                        //               0.0, 0.0),
                                        //       child: Padding(
                                        //         padding:
                                        //             EdgeInsetsDirectional
                                        //                 .fromSTEB(15.0,
                                        //                     45.0, 0.0, 0.0),
                                        //         child: Container(
                                        //           width: 33.0,
                                        //           height: 17.0,
                                        //           decoration: BoxDecoration(
                                        //             color: FlutterFlowTheme
                                        //                     .of(context)
                                        //                 .secondaryBackground,
                                        //             borderRadius:
                                        //                 BorderRadius
                                        //                     .circular(6.0),
                                        //             border: Border.all(
                                        //               color: Colors.black,
                                        //               width: 1.0,
                                        //             ),
                                        //           ),
                                        //           child: Padding(
                                        //             padding:
                                        //                 EdgeInsetsDirectional
                                        //                     .fromSTEB(
                                        //                         7.0,
                                        //                         3.0,
                                        //                         0.0,
                                        //                         0.0),
                                        //             child: Text(
                                        //               '${authProviderr.percent}%',
                                        //               style: FlutterFlowTheme
                                        //                       .of(context)
                                        //                   .bodyMedium
                                        //                   .override(
                                        //                     fontFamily:
                                        //                         'Poppins',
                                        //                     color: Colors
                                        //                         .black,
                                        //                     fontSize: 8.0,
                                        //                     fontWeight:
                                        //                         FontWeight
                                        //                             .bold,
                                        //                   ),
                                        //             ),
                                        //           ),
                                        //         ),
                                        //       ),
                                        //     ),
                                        //   ],
                                        // ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  13.0, 10.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                authProvider.userName
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  /// 'Tax year'
                                                  Text(
                                                    'Tax year',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          fontSize: 13.0,
                                                        ),
                                                  ),

                                                  InkWell(
                                                    onTap: () {
                                                      _openSimpleItemPicker(
                                                          context,
                                                          authProvider,
                                                          list.map(
                                                              (String item) {
                                                            return Text(
                                                              item,
                                                            );
                                                          }).toList(), () {
                                                        s.prefs.setString(
                                                          'year',
                                                          authProvider.thevalue,
                                                        );
                                                      });
                                                    },
                                                    child: SizedBox(
                                                      width: 80,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            s.prefs.getString(
                                                                    'year') ??
                                                                authProvider
                                                                    .thevalue,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFBEF397),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .keyboard_arrow_down_outlined,
                                                            color: Color(
                                                                0xFFBEF397),
                                                            size: 20,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),

                                                  // Stack(
                                                  //   children: [
                                                  //     GestureDetector(
                                                  //       onTap: () {
                                                  //         authProvider
                                                  //                 .thevalue =
                                                  //             currentYear;
                                                  //         authProvider
                                                  //             .changeYear(
                                                  //                 context,
                                                  //                 currentYear);
                                                  //       },
                                                  //       behavior:
                                                  //           HitTestBehavior
                                                  //               .opaque,
                                                  //       child: DropdownButton<
                                                  //           String>(
                                                  //         items: <String>[
                                                  //           '2023',
                                                  //           '2022',
                                                  //           '2021',
                                                  //           '2020'
                                                  //         ].map((String value) {
                                                  //           return DropdownMenuItem<
                                                  //               String>(
                                                  //             value: value,
                                                  //             child: Container(
                                                  //               width: 55,
                                                  //               child: Text(
                                                  //                 value,
                                                  //                 style: FlutterFlowTheme.of(
                                                  //                         context)
                                                  //                     .bodyMedium
                                                  //                     .override(
                                                  //                       fontFamily:
                                                  //                           'Poppins',
                                                  //                       color: Colors
                                                  //                           .black,
                                                  //                       fontSize:
                                                  //                           13.0,
                                                  //                       fontWeight:
                                                  //                           FontWeight.w600,
                                                  //                     ),
                                                  //               ),
                                                  //             ),
                                                  //           );
                                                  //         }).toList(),
                                                  //         onChanged: (v) {
                                                  //           setState(() {
                                                  //             currentYear =
                                                  //                 v.toString();
                                                  //           });
                                                  //           authProvider
                                                  //               .thevalue = v!;
                                                  //           authProvider
                                                  //               .changeYear(
                                                  //                   context, v);
                                                  //           print(v);
                                                  //         },
                                                  //       ),
                                                  //     ),
                                                  //     Positioned(
                                                  //       bottom: 10,
                                                  //       left: 14,
                                                  //       child: Padding(
                                                  //         padding:
                                                  //             EdgeInsetsDirectional
                                                  //                 .fromSTEB(
                                                  //                     05.0,
                                                  //                     0.0,
                                                  //                     0.0,
                                                  //                     0.0),
                                                  //         child: Text(
                                                  //           authProvider
                                                  //               .thevalue,
                                                  //           style: FlutterFlowTheme
                                                  //                   .of(context)
                                                  //               .bodyMedium
                                                  //               .override(
                                                  //                 fontFamily:
                                                  //                     'Poppins',
                                                  //                 color: Color(
                                                  //                     0xFFBEF397),
                                                  //                 fontSize:
                                                  //                     13.0,
                                                  //                 fontWeight:
                                                  //                     FontWeight
                                                  //                         .w600,
                                                  //               ),
                                                  //         ),
                                                  //       ),
                                                  //     ),
                                                  //   ],
                                                  // ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        context.pushNamed(
                                          'AskQuestion',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 500),
                                            ),
                                          },
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/images/user.png',
                                        width: 40.0,
                                        height: 40.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 20.0, 14.0, 0.0),
                                child: InkWell(
                                  onTap: () async {
                                    if (authProvider.totalDeduction > 0) {
                                      context.pushNamed(
                                        'Summary',
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
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF202020),
                                      borderRadius: BorderRadius.circular(11.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Text(
                                            'TAX DEDUCTION',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 11.0, 0.0, 15.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  '${formatCurrency.format(authProvider.totalDeduction)}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFBEF397),
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.keyboard_arrow_right,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (authProvider.totalDeduction > 0)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 20.0, 16.0, 20.0),
                                  child: Container(
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFBEF397),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 13.0, 13.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              // FaIcon(
                                              //   FontAwesomeIcons
                                              //       .solidTimesCircle,
                                              //   color: Color(0xB3000000),
                                              //   size: 20.0,
                                              // ),
                                            ],
                                          ),
                                        ),
                                        if (authProvider.percent != null) ...[
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 10.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Classify your\nexpenses: ${authProvider.percent.toInt()}%\ncomplete',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    SemicircularIndicator(
                                                      radius: 40,
                                                      color: Color.fromRGBO(
                                                        32,
                                                        32,
                                                        32,
                                                        1,
                                                      ),
                                                      backgroundColor:
                                                          Colors.white,
                                                      strokeWidth: 5,
                                                      bottomPadding: 0,
                                                      progress: authProvider
                                                              .percent
                                                              .toDouble() *
                                                          .01,
                                                      child: Text(
                                                        '${authProvider.percent.toInt()}%',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 40,
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            '${authProvider.percent.toInt()}%',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      14.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Completed',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      10.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 12,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.8,
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Claim possible deduction worth' +
                                                                '  ${formatCurrency.format(authProvider.totalLaterExpenses)}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
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
                                          InkWell(
                                            onTap: () async {
                                              if (authProvider
                                                      .laterTransactionsitems!
                                                      .data!
                                                      .length >
                                                  0) {
                                                context.pushNamed(
                                                  'LaterPage',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: const Duration(
                                                        milliseconds: 500,
                                                      ),
                                                    ),
                                                  },
                                                );
                                              } else if (authProvider.percent
                                                      .toString() ==
                                                  100.toString()) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (_) => Congrats(),
                                                  ),
                                                );
                                              } else {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (_) =>
                                                        ReviewedPageWidget(),
                                                  ),
                                                );
                                                // context.pushNamed(
                                                //   'ReviewedPage',
                                                //   extra: <String, dynamic>{
                                                //     kTransitionInfoKey:
                                                //         TransitionInfo(
                                                //       hasTransition: true,
                                                //       transitionType:
                                                //           PageTransitionType
                                                //               .rightToLeft,
                                                //       duration: Duration(
                                                //           milliseconds: 500),
                                                //     ),
                                                //   },
                                                // );
                                              }
                                            },
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 20.0, 20.0, 20.0),
                                              child: Container(
                                                width: 180.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFBEF397),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  border: Border.all(
                                                    color: Colors.black,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Classify now',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons
                                                            .arrow_forward_rounded,
                                                        color: Colors.black,
                                                        size: 18.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                  ),
                                ),
                              if (authProvider.totalDeduction > 0)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Expenses to review',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              if (authProvider.totalDeduction > 0)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          /// Classify Possible Deductions
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                if ((authProvider.percent ?? 0)
                                                        .toString() ==
                                                    100.toString()) {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (_) =>
                                                          Congrats(),
                                                    ),
                                                  );
                                                } else {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (_) =>
                                                          ReviewedPageWidget(),
                                                    ),
                                                  );
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 75.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF161616),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 11.0,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFFE5A3A3),
                                                                Color(
                                                                    0xFFA57E7E)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      0, 1.0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/questionmark.svg',
                                                            width: 25.0,
                                                            height: 26.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Classify Possible Deductions',
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                maxLines: 1,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          14,
                                                                      color: Color(
                                                                          0xFFDBEBFD),
                                                                    ),
                                                              ),
                                                              Text(
                                                                'Potential deductions  worth  ${formatCurrency.format(authProvider.itemCount)}',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFFA5A5A5),
                                                                      fontSize:
                                                                          11.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                maxLines: 1,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons
                                                            .arrow_forward_ios_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        size: 18.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),

                                          /// CPA
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 0.0),
                                            child: Container(
                                              width: 100.0,
                                              height: 75.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF161616),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'AskQuestion',
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 500),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 11.0,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFFBEF397),
                                                                Color(
                                                                    0xFFA57E7E)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      0, 1.0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Image.asset(
                                                            'assets/images/user.png',
                                                            width: 26.0,
                                                            height: 26.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'CPA',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          14,
                                                                      color: Color(
                                                                          0xFFDBEBFD),
                                                                    ),
                                                              ),
                                                              Text(
                                                                'You can visit your CPA question here',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFFA5A5A5),
                                                                      fontSize:
                                                                          11.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons
                                                            .arrow_forward_ios_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        size: 18.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),

                                          /// Later
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                              20.0,
                                              20.0,
                                              20.0,
                                              20.0,
                                            ),
                                            child: InkWell(
                                              onTap: () async {
                                                context.pushNamed(
                                                  'LaterPage',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: const Duration(
                                                        milliseconds: 500,
                                                      ),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 75.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF161616),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 11.0,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFFE5A3A3),
                                                                Color(
                                                                    0xFFA57E7E)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      0, 1.0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .clock,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            size: 26.0,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Later',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFFDBEBFD),
                                                                    ),
                                                              ),
                                                              Text(
                                                                'Potential deductions worth ${formatCurrency.format(authProvider.totalLaterExpenses)}',
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
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons
                                                            .arrow_forward_ios_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        size: 18.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 25),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
