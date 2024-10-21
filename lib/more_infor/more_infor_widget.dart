import '../models/transactionsModel.dart';
import '../providers/auth_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'more_infor_model.dart';
export 'more_infor_model.dart';

class MoreInforWidget extends StatefulWidget {
  MoreInforWidget({this.item, this.isfromCtagorizedScreen = false, Key? key})
      : super(key: key);
  TransactionItem? item;
  bool isfromCtagorizedScreen;

  @override
  _MoreInforWidgetState createState() => _MoreInforWidgetState();
}

class _MoreInforWidgetState extends State<MoreInforWidget> {
  late MoreInforModel _model;
  var formattedDatee = DateFormat.yMMMMd('en_US');
  final scaffoldKey = GlobalKey<ScaffoldState>();

  // final _unfocusNode = FocusNode();
  final formatCurrency = new NumberFormat.simpleCurrency();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreInforModel());
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.getUserAccounts();
  }

  @override
  void dispose() {
    _model.dispose();

    // _unfocusNode.dispose();
    super.dispose();
  }
  // 6442
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    var authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          // onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 3.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'More information',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 25.0, 0.0, 0.0),
                                child: Text(
                                  'Merchant Name (A.I. extracted)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 13.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  widget.item!.merchantBusinessName!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFDBEBFD),
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 18.0, 0.0, 0.0),
                                child: Text(
                                  'Merchant Details (Bank statement)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 13.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  widget.item!.merchantInternational!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFDBEBFD),
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 22.0, 0.0, 0.0),
                                child: Text(
                                  'Account',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 13.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'll',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFDBEBFD),
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 22.0, 0.0, 0.0),
                                    child: Text(
                                      'Date',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFA5A5A5),
                                            fontSize: 13.0,
                                          ),
                                    ),
                                  ),
                                  widget.item!.postDate == null
                                      ? Container()
                                      : Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            formattedDatee.format(
                                                DateTime.parse(widget
                                                    .item!.postDate!
                                                    .toString())),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFDBEBFD),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 8.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF202020),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 80.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 22.0, 0.0, 0.0),
                                              child: Text(
                                                'Original amount',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFA5A5A5),
                                                          fontSize: 13.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                '${formatCurrency.format(widget.item!.amount)}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFDBEBFD),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Padding(
                                            //   padding: EdgeInsetsDirectional
                                            //       .fromSTEB(
                                            //           0.0, 22.0, 0.0, 0.0),
                                            //   child: Text(
                                            //     'Edited amount',
                                            //     style:
                                            //         FlutterFlowTheme.of(context)
                                            //             .bodyMedium
                                            //             .override(
                                            //               fontFamily: 'Poppins',
                                            //               color:
                                            //                   Color(0xFFA5A5A5),
                                            //               fontSize: 13.0,
                                            //             ),
                                            //   ),
                                            // ),
                                            // Row(
                                            //   mainAxisSize: MainAxisSize.max,
                                            //   children: [
                                            //     Padding(
                                            //       padding: EdgeInsetsDirectional
                                            //           .fromSTEB(
                                            //               0.0, 5.0, 0.0, 0.0),
                                            //       child: Text(
                                            //         '\$342.24',
                                            //         style: FlutterFlowTheme.of(
                                            //                 context)
                                            //             .bodyMedium
                                            //             .override(
                                            //               fontFamily: 'Poppins',
                                            //               color:
                                            //                   Color(0xFFDBEBFD),
                                            //               fontWeight:
                                            //                   FontWeight.w600,
                                            //             ),
                                            //       ),
                                            //     ),
                                            //     Padding(
                                            //       padding: EdgeInsetsDirectional
                                            //           .fromSTEB(
                                            //               5.0, 5.0, 0.0, 0.0),
                                            //       child: Text(
                                            //         'Edit',
                                            //         style: FlutterFlowTheme.of(
                                            //                 context)
                                            //             .bodyMedium
                                            //             .override(
                                            //               fontFamily: 'Poppins',
                                            //               color:
                                            //                   Color(0xFFBEF397),
                                            //               fontWeight:
                                            //                   FontWeight.w600,
                                            //             ),
                                            //       ),
                                            //     ),
                                            //   ],
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 8.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF202020),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              widget.item!.deduction == 1
                                  ? Container()
                                  : Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 22.0, 0.0, 0.0),
                                          child: Text(
                                            'Transaction Type',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFA5A5A5),
                                                  fontSize: 13.0,
                                                ),
                                          ),
                                        ),
                                        widget.item!.deduction == 1
                                            ? Container()
                                            : Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .8,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        widget.item!.deduction!
                                                            .divisionTitle
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFDBEBFD),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  // Padding(
                                                  //   padding: EdgeInsetsDirectional.fromSTEB(
                                                  //       10.0, 7.0, 0.0, 0.0),
                                                  //   child: Icon(
                                                  //     Icons.info_outline,
                                                  //     color: FlutterFlowTheme.of(context)
                                                  //         .primaryBtnText,
                                                  //     size: 24.0,
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 22.0, 0.0, 0.0),
                                          child: Text(
                                            'Transaction Type details',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFA5A5A5),
                                                  fontSize: 13.0,
                                                ),
                                          ),
                                        ),
                                        widget.item!.deduction == 1
                                            ? Container()
                                            : Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 5.0, 0.0, 0.0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .8,
                                                  child: Text(
                                                    widget.item!.deduction!
                                                        .subdivisionTitle
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFDBEBFD),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1.0,
                                            height: 8.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF202020),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Padding(
                                  //   padding: EdgeInsetsDirectional.fromSTEB(
                                  //       16.0, 23.0, 18.0, 0.0),
                                  //   child: Row(
                                  //     mainAxisSize: MainAxisSize.max,
                                  //     mainAxisAlignment:
                                  //         MainAxisAlignment.spaceBetween,
                                  //     children: [
                                  //       Row(
                                  //         mainAxisSize: MainAxisSize.max,
                                  //         children: [
                                  //           Image.asset(
                                  //             'assets/images/lamp.png',
                                  //             width: 21.0,
                                  //             height: 20.0,
                                  //             fit: BoxFit.cover,
                                  //           ),
                                  //           Padding(
                                  //             padding: EdgeInsetsDirectional
                                  //                 .fromSTEB(
                                  //                     12.0, 0.0, 0.0, 0.0),
                                  //             child: Text(
                                  //               'Related tax info',
                                  //               style:
                                  //                   FlutterFlowTheme.of(context)
                                  //                       .bodyMedium
                                  //                       .override(
                                  //                         fontFamily: 'Poppins',
                                  //                         color:
                                  //                             Color(0xFFDBEBFD),
                                  //                         fontWeight:
                                  //                             FontWeight.w600,
                                  //                       ),
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //       Padding(
                                  //         padding:
                                  //             EdgeInsetsDirectional.fromSTEB(
                                  //                 10.0, 0.0, 0.0, 0.0),
                                  //         child: Icon(
                                  //           Icons.arrow_forward_rounded,
                                  //           color: FlutterFlowTheme.of(context)
                                  //               .primaryBtnText,
                                  //           size: 24.0,
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  // Padding(
                                  //   padding: EdgeInsetsDirectional.fromSTEB(
                                  //       0.0, 20.0, 0.0, 0.0),
                                  //   child: Container(
                                  //     width: MediaQuery.of(context).size.width *
                                  //         1.0,
                                  //     height: 8.0,
                                  //     decoration: BoxDecoration(
                                  //       color: Color(0xFF202020),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              IconButton(
                                onPressed: () async {
                                  bool success = await authProvider
                                      .updateTransactionStatus(
                                    widget.item!.id,
                                    'DEDUCTION',
                                    updateList: false,
                                  );

                                  if (success == true) {
                                    int count = authProvider
                                        .categoriesedTransactions!
                                        .data![0]
                                        .transactions!
                                        .length;
                                    authProvider.categoriesedTransactions!
                                        .data![0].transactions!
                                        .removeWhere((element) =>
                                            element.id ==
                                            authProvider
                                                .categoriesedTransactions!
                                                .data![0]
                                                .transactions![0]
                                                .id);
                                    authProvider.getAmountsDeductions();
                                    authProvider.notifyListeners();
                                    setState(() {});
                                    print(count);
                                    if (count == 1) {
                                      authProvider.getCategoriesedTransactions(
                                          context,
                                          frontransaction: true);
                                    }
                                  }
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.check_rounded,
                                  color: Color(0xFFBEF397),
                                  size: 30.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 22.0, 0.0, 0.0),
                                child: Text(
                                  'Deduction',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFDBEBFD),
                                        fontSize: 13.0,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              IconButton(
                                onPressed: () async {
                                  bool success = await authProvider
                                      .updateTransactionStatus(
                                          widget.item!.id, 'NON-DEDUCTION',
                                          updateList: false);

                                  if (success == true) {
                                    int count = authProvider
                                        .categoriesedTransactions!
                                        .data![0]
                                        .transactions!
                                        .length;
                                    authProvider.categoriesedTransactions!
                                        .data![0].transactions!
                                        .removeWhere((element) =>
                                            element.id ==
                                            authProvider
                                                .categoriesedTransactions!
                                                .data![0]
                                                .transactions![0]
                                                .id);
                                    authProvider.getAmountsDeductions();
                                    authProvider.notifyListeners();
                                    setState(() {});
                                    print(count);
                                    if (count == 1) {
                                      authProvider.getCategoriesedTransactions(
                                          context,
                                          frontransaction: true);
                                    }
                                  }
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.close_outlined,
                                  color: Color(0xFFFF4040),
                                  size: 30.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 22.0, 0.0, 0.0),
                                child: Text(
                                  'Non-deduction',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFDBEBFD),
                                        fontSize: 13.0,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: InkWell(
                              onTap: () async {
                                // context.pushNamed(
                                //   'LaterPage',
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
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      bool success = await authProvider
                                          .updateTransactionStatus(
                                              widget.item!.id, 'LATER',
                                              updateList: false);

                                      if (success == true) {
                                        int count = authProvider
                                            .categoriesedTransactions!
                                            .data![0]
                                            .transactions!
                                            .length;
                                        authProvider.categoriesedTransactions!
                                            .data![0].transactions!
                                            .removeWhere((element) =>
                                                element.id ==
                                                authProvider
                                                    .categoriesedTransactions!
                                                    .data![0]
                                                    .transactions![0]
                                                    .id);
                                        authProvider.getAmountsDeductions();
                                        authProvider.notifyListeners();
                                        setState(() {});
                                        print(count);
                                        if (count == 1) {
                                          authProvider
                                              .getCategoriesedTransactions(
                                                  context,
                                                  frontransaction: true);
                                        }
                                      }
                                      Navigator.pop(context);
                                    },
                                    icon: FaIcon(
                                      FontAwesomeIcons.clock,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      size: 30.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 22.0, 0.0, 0.0),
                                    child: Text(
                                      'Later',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFDBEBFD),
                                            fontSize: 13.0,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
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
