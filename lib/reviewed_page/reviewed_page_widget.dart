import 'package:moulai1/loader.dart';

import '../models/transactionsModel.dart';
import '../more_infor/more_infor_widget.dart';
import '../providers/auth_provider.dart';
import '../reviewed_list/reviewed_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'reviewed_page_model.dart';
export 'reviewed_page_model.dart';

class ReviewedPageWidget extends StatefulWidget {
  const ReviewedPageWidget({Key? key}) : super(key: key);

  @override
  _ReviewedPageWidgetState createState() => _ReviewedPageWidgetState();
}

class _ReviewedPageWidgetState extends State<ReviewedPageWidget> {
  late ReviewedPageModel _model;
  var formattedDatee = DateFormat.yMMMMd('en_US');
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  bool loading = true;

  // double itemsCount = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((t) {
      var authProviderr = Provider.of<AuthProvider>(context, listen: false);
      authProviderr.getCategoriesedTransactions(context, init: true);
      loading = false;
      setState(() {});

      // authProviderr.categoriesedTransactions!.data!.forEach((element) {
      //   itemsCount += element.transactions!.length;
      // });
      setState(() {});

      authProviderr.notifyListeners();
      _model = createModel(context, () => ReviewedPageModel());
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
    var authProvider = Provider.of<AuthProvider>(context);
    final formatCurrency = new NumberFormat.simpleCurrency(
      locale: "en_US",
    );

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF202020),
      body: SafeArea(
        child: authProvider.reviewPageLoading == true
            ? loader()
            : GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 10.0, 0.0, 0.0),
                                      child: InkWell(
                                        onTap: () async {
                                          Navigator.pop(context);
                                          // context.pushNamed(
                                          //   'Dashboard',
                                          //   extra: <String, dynamic>{
                                          //     kTransitionInfoKey:
                                          //         TransitionInfo(
                                          //       hasTransition: true,
                                          //       transitionType:
                                          //           PageTransitionType
                                          //               .leftToRight,
                                          //       duration:
                                          //           Duration(milliseconds: 300),
                                          //     ),
                                          //   },
                                          // );
                                        },
                                        child: Icon(
                                          Icons.keyboard_arrow_left_outlined,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Total deductions',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                            // '\$${authProvider.itemCount.toInt().toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 0.8,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: (authProvider
                                                    .categoriesedTransactions !=
                                                null &&
                                            (authProvider
                                                        .categoriesedTransactions!
                                                        .data ??
                                                    [])
                                                .isNotEmpty)
                                        ? Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Stack(
                                                children: [
                                                  authProvider.reviewPageLoading ==
                                                          true
                                                      ? Container()
                                                      : Row(
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
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                            //   padding: EdgeInsetsDirectional
                                                            //       .fromSTEB(
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
                                                  //   padding: EdgeInsetsDirectional
                                                  //       .fromSTEB(
                                                  //           0.0, 24.0, 0.0, 0.0),
                                                  //   child: Text(
                                                  //     '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  - -  ',
                                                  //     style:
                                                  //         FlutterFlowTheme.of(context)
                                                  //             .bodyMedium
                                                  //             .override(
                                                  //               fontFamily: 'Poppins',
                                                  //               color: FlutterFlowTheme
                                                  //                       .of(context)
                                                  //                   .primaryBtnText,
                                                  //               fontSize: 8.0,
                                                  //             ),
                                                  //   ),
                                                  // ),
                                                  // Padding(
                                                  //   padding: EdgeInsetsDirectional
                                                  //       .fromSTEB(
                                                  //           0.0, 32.0, 0.0, 0.0),
                                                  //   child: Text(
                                                  //     '2 merchants remaining',
                                                  //     style:
                                                  //         FlutterFlowTheme.of(context)
                                                  //             .bodyMedium
                                                  //             .override(
                                                  //               fontFamily: 'Poppins',
                                                  //               color: FlutterFlowTheme
                                                  //                       .of(context)
                                                  //                   .primaryBtnText,
                                                  //               fontSize: 13.0,
                                                  //             ),
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
                                                                      9.0),
                                                              bottomRight:
                                                                  Radius
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
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Image.asset(
                                                            'assets/images/briefGreen.png',
                                                            width: 20.0,
                                                            height: 20.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
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
                                                            'assets/images/list.png',
                                                            width: 20.0,
                                                            height: 20.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          onTap: () async {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (_) =>
                                                                    ReviewedListWidget(),
                                                              ),
                                                            );
                                                            // context.pushNamed(
                                                            //   'ReviewedList',
                                                            //   extra: <String,
                                                            //       dynamic>{
                                                            //     kTransitionInfoKey:
                                                            //         TransitionInfo(
                                                            //       hasTransition: true,
                                                            //       transitionType:
                                                            //           PageTransitionType
                                                            //               .fade,
                                                            //       duration: Duration(
                                                            //           milliseconds:
                                                            //               500),
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
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        : SizedBox.shrink(),
                                  ),
                                  if ((authProvider.categoriesedTransactions !=
                                          null &&
                                      (authProvider.categoriesedTransactions!
                                                  .data ??
                                              [])
                                          .isNotEmpty))
                                    ListItem(
                                      data: authProvider
                                          .categoriesedTransactions!.data![0],
                                    )
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
      ),
    );
  }
}

class ListItem extends StatefulWidget {
  ListItem({
    required this.data,
    Key? key,
  }) : super(key: key);
  final data;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  TransactionItem? item;

  var formattedDatee = DateFormat.yMMMMd('en_US');
  final formatCurrency = new NumberFormat.simpleCurrency();

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);
    final TransactionItem item =
        authProvider.categoriesedTransactions!.data![0].transactions![0];
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.horizontal,
      onDismissed: (DismissDirection direction) async {
        if (direction.index == 3) {
          bool success = await authProvider
              .updateTransactionStatus(item.id, 'DEDUCTION', updateList: false);

          if (success == true) {
            int count = authProvider
                .categoriesedTransactions!.data![0].transactions!.length;
            authProvider.categoriesedTransactions!.data![0].transactions!
                .removeWhere((element) =>
                    element.id ==
                    authProvider.categoriesedTransactions!.data![0]
                        .transactions![0].id);

            authProvider.getAmountsDeductions();

            authProvider.notifyListeners();
            setState(() {});
            print(count);
            if (count == 1) {
              authProvider.getCategoriesedTransactions(context,
                  frontransaction: true);
            }
          }
        } else if (direction.index == 2) {
          print('Left');

          bool success = await authProvider.updateTransactionStatus(
              item.id, 'NON-DEDUCTION',
              updateList: false);

          if (success == true) {
            int count = authProvider
                .categoriesedTransactions!.data![0].transactions!.length;
            authProvider.categoriesedTransactions!.data![0].transactions!
                .removeWhere((element) =>
                    element.id ==
                    authProvider.categoriesedTransactions!.data![0]
                        .transactions![0].id);
            authProvider.getAmountsDeductions();
            authProvider.notifyListeners();
            setState(() {});
            print(count);
            if (count == 1) {
              authProvider.getCategoriesedTransactions(context,
                  frontransaction: true);
            }
          }
        }

        print('Dismissed with direction ${direction.index}');
      },
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
        child: authProvider.reviewPageLoading == true
            ? loader()
            : Container(
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(
                  color: Color(0xFF202020),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Color(0xFFBEF397),
                      offset: Offset(0.0, 0.0),
                      spreadRadius: 0.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 22.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            authProvider
                                                .categoriesedTransactions!
                                                .data![0]
                                                .transactions![0]
                                                .merchantBusinessName
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFDBEBFD),
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      authProvider.categoriesedTransactions!
                                          .data![0].subdivisionTitle
                                          .toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFDBEBFD),
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 11.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Text(
                              //   item.deductionClass!,
                              //   style: FlutterFlowTheme.of(context).bodyMedium.override(
                              //         fontFamily: 'Poppins',
                              //         color: FlutterFlowTheme.of(context).primaryBtnText,
                              //         fontSize: 13.0,
                              //       ),
                              // ),
                              // Padding(
                              //   padding:
                              //       EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                              //   child: Icon(
                              //     Icons.info_outline,
                              //     color: Color(0xFFA5A5A5),
                              //     size: 20.0,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 47.0, 0.0, 0.0),
                          child: Container(
                            width: 100.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF323232),
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                item.direction.toString(),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 11.0, 18.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                '${formatCurrency.format(item.amount).toString()}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 23.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  formattedDatee.format(item.postDate!),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 12.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 40.0, 12.0, 11.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFA5A5A5),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  bool success = await authProvider
                                      .updateTransactionStatus(
                                          item.id, 'NON-DEDUCTION',
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
                                    authProvider.notifyListeners();
                                    setState(() {});
                                    print(count);
                                    if (count == 1) {
                                      authProvider.getCategoriesedTransactions(
                                          context,
                                          frontransaction: true);
                                    }
                                    // context.pushNamed(
                                    //   'Dashboard',
                                    //   extra: <String, dynamic>{
                                    //     kTransitionInfoKey: TransitionInfo(
                                    //       hasTransition: true,
                                    //       transitionType:
                                    //           PageTransitionType.leftToRight,
                                    //       duration: Duration(milliseconds: 300),
                                    //     ),
                                    //   },
                                    // );

                                    // authProvider
                                    //     .getCategoriesedTransactions( context,frontransaction: true);
                                  }
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/reject.png',
                                      width: 65.0,
                                      height: 65.0,
                                      fit: BoxFit.cover,
                                    ),
                                    GestureDetector(
                                      onTap: () async {},
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 11.0, 0.0, 0.0),
                                          child: Text(
                                            '   REJECT',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFFB5959),
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  bool success = await authProvider
                                      .updateTransactionStatus(item.id, 'LATER',
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
                                    authProvider.notifyListeners();
                                    setState(() {});
                                    print(count);
                                    if (count == 1) {
                                      authProvider.getCategoriesedTransactions(
                                          context,
                                          frontransaction: true);
                                    }
                                  }
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      'assets/images/alter.png',
                                      width: 37.0,
                                      height: 37.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 17.0, 0.0, 0.0),
                                      child: Text(
                                        'LATER',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // InkWell(
                              //   onTap: () async {
                              //     context.pushNamed(
                              //       'AskQuestion',
                              //       extra: <String, dynamic>{
                              //         kTransitionInfoKey:
                              //             TransitionInfo(
                              //           hasTransition: true,
                              //           transitionType:
                              //               PageTransitionType
                              //                   .rightToLeft,
                              //           duration: Duration(
                              //               milliseconds: 500),
                              //         ),
                              //       },
                              //     );
                              //   },
                              //   child: Column(
                              //     mainAxisSize: MainAxisSize.max,
                              //     children: [],
                              //   ),
                              //  ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      bool success = await authProvider
                                          .updateTransactionStatus(
                                        item.id,
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
                                          authProvider
                                              .getCategoriesedTransactions(
                                                  context,
                                                  frontransaction: true);
                                        }
                                      }
                                    },
                                    child: SvgPicture.asset(
                                      'assets/images/tickmarkoutlined.svg',
                                      width: 60.0,
                                      height: 60.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          .0, 11.0, 0.0, 0.0),
                                      child: Text(
                                        '  ACCEPT',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFBEF397),
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold,
                                            ),
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
                    Positioned(
                      top: 15,
                      right: 5,
                      child: IconButton(
                        onPressed: () {
                          if (item.deduction == 1) {
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => MoreInforWidget(
                                  item: item,
                                ),
                              ),
                            );
                          }
                        },
                        icon: Icon(
                          Icons.info_outline,
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          size: 20.0,
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
