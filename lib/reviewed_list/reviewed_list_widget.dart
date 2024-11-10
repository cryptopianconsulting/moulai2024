import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moulai1/loader.dart';

import '../models/transactionsModel.dart';
import '../more_infor/more_infor_widget.dart';
import '../providers/auth_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'reviewed_list_model.dart';
export 'reviewed_list_model.dart';

class ReviewedListWidget extends StatefulWidget {
  const ReviewedListWidget({Key? key}) : super(key: key);

  @override
  _ReviewedListWidgetState createState() => _ReviewedListWidgetState();
}

class _ReviewedListWidgetState extends State<ReviewedListWidget> {
  late ReviewedListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  List selectedIds = [];
  final formatCurrency = new NumberFormat.simpleCurrency();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewedListModel());
  }

//1281
  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    var authProvider = Provider.of<AuthProvider>(context);
    print(authProvider.categoriesedTransactions!.data![0].transactions!.length);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF202020),
      body: SafeArea(
        bottom: false,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: authProvider.loading == true
                      ? loader()
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 10.0, 0.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                context.pushNamed(
                                                  'Dashboard',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .leftToRight,
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Icon(
                                                Icons
                                                    .keyboard_arrow_left_outlined,
                                                color: Colors.white,
                                                size: 30.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Total deductions',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  '${formatCurrency.format(authProvider.totalDeduction)}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if ((authProvider.categoriesedTransactions!.data ??
                                    [])
                                .isNotEmpty)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 17.0, 0.0, 0.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 38.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Stack(
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              .6,
                                                          child: Text(
                                                            authProvider
                                                                .categoriesedTransactions!
                                                                .data![0]
                                                                .divisionTitle
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFDBEBFD),
                                                                  fontSize:
                                                                      17.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                        // Padding(
                                                        //   padding:
                                                        //       EdgeInsetsDirectional.fromSTEB(
                                                        //           3.0, 0.0, 0.0, 0.0),
                                                        //   child: Image.asset(
                                                        //     'assets/images/lamp.png',
                                                        //     width: 28.0,
                                                        //     height: 27.0,
                                                        //     fit: BoxFit.cover,
                                                        //   ),
                                                        // ),
                                                      ],
                                                    ),
                                                    // Padding(
                                                    //   padding: EdgeInsetsDirectional.fromSTEB(
                                                    //       0.0, 24.0, 0.0, 0.0),
                                                    //   child: Text(
                                                    //     '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  - -  ',
                                                    //     style: FlutterFlowTheme.of(context)
                                                    //         .bodyMedium
                                                    //         .override(
                                                    //           fontFamily: 'Poppins',
                                                    //           color:
                                                    //               FlutterFlowTheme.of(context)
                                                    //                   .primaryBtnText,
                                                    //           fontSize: 8.0,
                                                    //         ),
                                                    //   ),
                                                    // ),
                                                    // Padding(
                                                    //   padding: EdgeInsetsDirectional.fromSTEB(
                                                    //       0.0, 32.0, 0.0, 0.0),
                                                    //   child: Text(
                                                    //     '2 merchants remaining',
                                                    //     style: FlutterFlowTheme.of(context)
                                                    //         .bodyMedium
                                                    //         .override(
                                                    //           fontFamily: 'Poppins',
                                                    //           color:
                                                    //               FlutterFlowTheme.of(context)
                                                    //                   .primaryBtnText,
                                                    //           fontSize: 13.0,
                                                    //         ),
                                                    //   ),
                                                    // ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 96.0,
                                                  height: 54.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF202020),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9.0),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Stack(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Image.asset(
                                                              'assets/images/brief.png',
                                                              width: 20.0,
                                                              height: 20.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () async {
                                                              Navigator.pop(
                                                                  context);
                                                              // context.pushNamed(
                                                              //   'ReviewedPage',
                                                              //   extra: <String, dynamic>{
                                                              //     kTransitionInfoKey:
                                                              //         TransitionInfo(
                                                              //       hasTransition: true,
                                                              //       transitionType:
                                                              //           PageTransitionType
                                                              //               .fade,
                                                              //       duration: Duration(
                                                              //           milliseconds: 500),
                                                              //     ),
                                                              //   },
                                                              // );
                                                            },
                                                            child: Container(
                                                              width: 48.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          9.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          9.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Stack(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        children: [
                                                          Container(
                                                            width: 48.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFF374450),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        9.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        9.0),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Image.asset(
                                                              'assets/images/listGreen.png',
                                                              width: 20.0,
                                                              height: 20.0,
                                                              fit: BoxFit.cover,
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 40.0, 0.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF202020),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        18.0, 11.0, 0.0, 10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 24.0,
                                                      height: 24.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF202020),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(3.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                        ),
                                                      ),
                                                      child: Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3.0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFF202020),
                                                        ),
                                                        child: Checkbox(
                                                          value: authProvider
                                                                  .categoriesedTransactions!
                                                                  .data![0]
                                                                  .transactions!
                                                                  .length ==
                                                              selectedIds
                                                                  .length,
                                                          onChanged:
                                                              (newValue) async {
                                                            if (authProvider
                                                                    .categoriesedTransactions!
                                                                    .data![0]
                                                                    .transactions!
                                                                    .length ==
                                                                selectedIds
                                                                    .length) {
                                                              authProvider
                                                                  .categoriesedTransactions!
                                                                  .data![0]
                                                                  .transactions!
                                                                  .forEach(
                                                                      (element) {
                                                                selectedIds
                                                                    .remove(
                                                                        element
                                                                            .id);
                                                              });
                                                            } else {
                                                              authProvider
                                                                  .categoriesedTransactions!
                                                                  .data![0]
                                                                  .transactions!
                                                                  .forEach(
                                                                      (element) {
                                                                if (!selectedIds
                                                                    .contains(
                                                                        element
                                                                            .id)) {
                                                                  selectedIds.add(
                                                                      element
                                                                          .id);
                                                                }
                                                              });
                                                              setState(() =>
                                                                  _model.checkboxValue2 =
                                                                      newValue!);
                                                            }

                                                            setState(() {});
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  23.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Select All (${selectedIds.length})',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFA5A5A5),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          ListView.builder(
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.vertical,
                                              itemCount: authProvider
                                                  .categoriesedTransactions!
                                                  .data![0]
                                                  .transactions!
                                                  .length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int i) {
                                                TransactionItem item =
                                                    authProvider
                                                        .categoriesedTransactions!
                                                        .data![0]
                                                        .transactions![i];

                                                return InkWell(
                                                  onTap: () {
                                                    print(
                                                        ':::::::::::${item.deduction}');
                                                    if (item.deduction == 1) {
                                                    } else {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (_) =>
                                                              MoreInforWidget(
                                                                  item: item,
                                                                  isfromCtagorizedScreen:
                                                                      true),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                18.0,
                                                                12.0,
                                                                0.0,
                                                                10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 24.0,
                                                          height: 24.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.black,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3.0),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFFA5A5A5),
                                                            ),
                                                          ),
                                                          child: Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              3.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  Colors.black,
                                                            ),
                                                            child: Checkbox(
                                                              value: selectedIds
                                                                  .contains(
                                                                      item.id),
                                                              onChanged:
                                                                  (newValue) async {
                                                                if (selectedIds
                                                                    .contains(item
                                                                        .id)) {
                                                                  selectedIds
                                                                      .remove(item
                                                                          .id);
                                                                } else {
                                                                  selectedIds
                                                                      .add(item
                                                                          .id);
                                                                  setState(() =>
                                                                      _model.checkboxValue2 =
                                                                          newValue!);
                                                                }

                                                                setState(() {});
                                                              },
                                                              activeColor: Color(
                                                                  0xFFBEF397),
                                                              checkColor:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      23.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                .4,
                                                            child: Text(
                                                              authProvider
                                                                  .categoriesedTransactions!
                                                                  .data![0]
                                                                  .transactions![
                                                                      i]
                                                                  .merchantBusinessName
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Color(
                                                                        0xFFDBEBFD),
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Column(
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
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              width: 120,
                                                              child: Text(
                                                                authProvider
                                                                    .categoriesedTransactions!
                                                                    .data![0]
                                                                    .subdivisionTitle
                                                                    .toString(),
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      fontSize:
                                                                          11.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                ),
              ),
              selectedIds.length > 0
                  ? Container(
                      height: 140,
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF0D0D0D),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 21.0, 16.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        selectedIds.forEach((element) async {
                                          bool success = await authProvider
                                              .updateTransactionStatus(
                                                  element, "DEDUCTION",
                                                  updateList: false);

                                          if (success == true) {
                                            selectedIds.remove(element);
                                            authProvider
                                                .getCategoriesedTransactions(
                                                    context,
                                                    frontransaction: true);
                                          }
                                        });
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
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        selectedIds.forEach((element) async {
                                          bool success = await authProvider
                                              .updateTransactionStatus(
                                                  element, "NON-DEDUCTION",
                                                  updateList: false);
                                          if (success == true) {
                                            selectedIds.remove(element);
                                            authProvider
                                                .getCategoriesedTransactions(
                                                    context,
                                                    frontransaction: true);
                                          }
                                        });
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
                                        IconButton(
                                          onPressed: () async {
                                            selectedIds
                                                .forEach((element) async {
                                              bool success = await authProvider
                                                  .updateTransactionStatus(
                                                      element, "LATER",
                                                      updateList: false);
                                              if (success == true) {
                                                selectedIds.remove(element);
                                                authProvider
                                                    .getCategoriesedTransactions(
                                                        context,
                                                        frontransaction: true);
                                              }
                                            });

                                            // if (success == true) {
                                            //   Navigator.pop(context);
                                            // }
                                          },
                                          icon: FaIcon(
                                            FontAwesomeIcons.clock,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 30.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : SizedBox.expand(),
            ],
          ),
        ),
      ),
    );
  }
}
