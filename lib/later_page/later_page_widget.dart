import 'package:flutter/material.dart';
import 'package:moulai1/loader.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '../models/transactionsModel.dart';
import '../more_infor/more_infor_widget.dart';
import '../providers/auth_provider.dart';
import 'later_page_model.dart';

export 'later_page_model.dart';

class LaterPageWidget extends StatefulWidget {
  const LaterPageWidget({Key? key}) : super(key: key);

  @override
  _LaterPageWidgetState createState() => _LaterPageWidgetState();
}

class _LaterPageWidgetState extends State<LaterPageWidget> {
  late LaterPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  var formattedDatee = DateFormat('EEEE, MMM d, yyyy');

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LaterPageModel());
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.TransactionsGet();
    authProvider.LaterTransactionsGet();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  final formatCurrency = new NumberFormat.simpleCurrency();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF0D0E0F),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Back Icon
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: InkWell(
                              onTap: () async {
                                authProvider.index = 0;
                                authProvider.notifyListeners();

                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.keyboard_arrow_left_outlined,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          ),

                          /// Later
                          Text(
                            'Later',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 31.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),

                          /// Expenses to review later.
                          Text(
                            'Expenses to review later.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                          ),

                          /// White line
                          Container(
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: 1.0,
                            color: Color(0xFFA5A5A5),
                          ),

                          /// Commented Code
                          // Column(
                          //   mainAxisSize: MainAxisSize.max,
                          //   children: [
                          //     Column(
                          //       mainAxisSize: MainAxisSize.max,
                          //       children: [
                          //         // Padding(
                          //         //   padding: EdgeInsetsDirectional.fromSTEB(
                          //         //       0.0, 35.0, 0.0, 0.0),
                          //         //   child: Row(
                          //         //     mainAxisSize: MainAxisSize.max,
                          //         //     mainAxisAlignment:
                          //         //         MainAxisAlignment.spaceBetween,
                          //         //     children: [
                          //         //       Padding(
                          //         //         padding: EdgeInsetsDirectional.fromSTEB(
                          //         //             15.0, 0.0, 0.0, 0.0),
                          //         //         child: Column(
                          //         //           mainAxisSize: MainAxisSize.max,
                          //         //           crossAxisAlignment:
                          //         //               CrossAxisAlignment.start,
                          //         //           children: [
                          //         //             Text(
                          //         //               'Optus',
                          //         //               style: FlutterFlowTheme.of(context)
                          //         //                   .bodyMedium
                          //         //                   .override(
                          //         //                     fontFamily: 'Poppins',
                          //         //                     color: Color(0xFFA5A5A5),
                          //         //                   ),
                          //         //             ),
                          //         //             Text(
                          //         //               '\$100',
                          //         //               style: FlutterFlowTheme.of(context)
                          //         //                   .bodyMedium
                          //         //                   .override(
                          //         //                     fontFamily: 'Poppins',
                          //         //                     color: Color(0xFFA5A5A5),
                          //         //                     fontSize: 12.0,
                          //         //                   ),
                          //         //             ),
                          //         //           ],
                          //         //         ),
                          //         //       ),
                          //         //       Row(
                          //         //         mainAxisSize: MainAxisSize.max,
                          //         //         mainAxisAlignment: MainAxisAlignment.end,
                          //         //         children: [
                          //         //           Text(
                          //         //             '1',
                          //         //             style: FlutterFlowTheme.of(context)
                          //         //                 .bodyMedium
                          //         //                 .override(
                          //         //                   fontFamily: 'Poppins',
                          //         //                   color:
                          //         //                       FlutterFlowTheme.of(context)
                          //         //                           .primaryBtnText,
                          //         //                   fontSize: 18.0,
                          //         //                   fontWeight: FontWeight.w500,
                          //         //                 ),
                          //         //           ),
                          //         //           Padding(
                          //         //             padding:
                          //         //                 EdgeInsetsDirectional.fromSTEB(
                          //         //                     16.0, 0.0, 15.0, 0.0),
                          //         //             child: Icon(
                          //         //               Icons.keyboard_arrow_right,
                          //         //               color: FlutterFlowTheme.of(context)
                          //         //                   .primaryBtnText,
                          //         //               size: 30.0,
                          //         //             ),
                          //         //           ),
                          //         //         ],
                          //         //       ),
                          //         //     ],
                          //         //   ),
                          //         // ),
                          //         Container(
                          //           width:
                          //               MediaQuery.of(context).size.width * 1.0,
                          //           height: 1.0,
                          //           decoration: BoxDecoration(
                          //             color: Color(0xFFA5A5A5),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),

                    authProvider.loading == true
                        ? loader()
                        : Container(
                            height: MediaQuery.of(context).size.height * .56,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: authProvider
                                    .laterTransactionsitems!.data!.length,
                                itemBuilder: (BuildContext context, int i) {
                                  TransactionItem item = authProvider
                                      .laterTransactionsitems!.data![i];
                                  return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => MoreInforWidget(
                                              item: item,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 9, top: 10, bottom: 10),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 5),
                                                      child: Image.asset(
                                                        'assets/images/pendingTransactionIcon.png',
                                                        width: 23.0,
                                                        height: 23.0,
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
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          item.deduction == 1
                                                              ? Container()
                                                              : Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .45,
                                                                  child: Text(
                                                                    item.merchantBusinessName
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                        ),
                                                                  ),
                                                                ),
                                                          Text(
                                                            formattedDatee
                                                                .format(DateTime
                                                                    .parse(item
                                                                        .postDate!
                                                                        .toString()))
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFA5A5A5),
                                                                  fontSize:
                                                                      13.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          '${formatCurrency.format(item.amount)}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                        ),
                                                        item.deduction == 1
                                                            ? Container()
                                                            : Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    .25,
                                                                child: Text(
                                                                  item.deduction!
                                                                      .subdivisionTitle
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color: Color(
                                                                              0xFFA5A5A5),
                                                                          fontSize:
                                                                              11.0),
                                                                ),
                                                              ),
                                                      ],
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (_) =>
                                                                MoreInforWidget(
                                                              item: item,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      icon: Icon(
                                                        Icons.info_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1.0,
                                            height: 1.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF202020),
                                            ),
                                          ),
                                        ],
                                      ));
                                }),
                          ),
                    // Column(
                    //   mainAxisSize: MainAxisSize.max,
                    //   children: [
                    //     Image.asset(
                    //       'assets/images/pendingTransactionIcon.png',
                    //       width: 82.0,
                    //       height: 82.0,
                    //       fit: BoxFit.cover,
                    //     ),
                    //     Padding(
                    //       padding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                    //       child: Text(
                    //         'There are no\nexpenses marked\nfor Later',
                    //         textAlign: TextAlign.center,
                    //         style: FlutterFlowTheme.of(context).bodyMedium.override(
                    //               fontFamily: 'Poppins',
                    //               color:
                    //                   FlutterFlowTheme.of(context).primaryBtnText,
                    //               fontSize: 24.0,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          18.0, 20.0, 18.0, 10.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'ReviewedPage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.leftToRight,
                                duration: Duration(milliseconds: 500),
                              ),
                            },
                          );
                        },
                        text: 'Back',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 63.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFBEF397),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .1,
                  left: MediaQuery.of(context).size.height * .1,
                  child: authProvider.loading == false &&
                          authProvider.laterTransactionsitems!.data!.length == 0
                      ? Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                              ),
                              Image.asset(
                                'assets/images/cream.png',
                                width: 82.0,
                                height: 82,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 45.0, 0.0, 0.0),
                                child: Text(
                                  'There are no\nexpenses marked\nfor Later',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
