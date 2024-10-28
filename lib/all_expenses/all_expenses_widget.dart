import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:moulai1/loader.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../models/transactionsModel.dart';
import '../more_infor/more_infor_widget.dart';
import '../providers/auth_provider.dart';
import 'all_expenses_model.dart';

export 'all_expenses_model.dart';

class AllExpensesWidget extends StatefulWidget {
  const AllExpensesWidget({Key? key}) : super(key: key);

  @override
  _AllExpensesWidgetState createState() => _AllExpensesWidgetState();
}

class _AllExpensesWidgetState extends State<AllExpensesWidget> {
  late AllExpensesModel _model;
  var formattedDatee = DateFormat.yMMMMd('en_US');
  final scaffoldKey = GlobalKey<ScaffoldState>();

  // final _unfocusNode = FocusNode();
  final formatCurrency = new NumberFormat.simpleCurrency();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllExpensesModel());

    _model.textController ??= TextEditingController(text: '');
  }

  @override
  void dispose() {
    _model.dispose();

    // _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final authProviderr = Provider.of<AuthProvider>(
      context,
    );
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          // onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 20.0, 30.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'All expenses',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFDBEBFD),
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  if (authProviderr.Transactionsitems != null)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 0.0, 0.0),
                                      child: Text(
                                        '(${authProviderr.Transactionsitems!.data!.length})',
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 24.0, 25.0, 0.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 46.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF202020),
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Color(0xFFA5A5A5),
                                      width: 0.5,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController,
                                      autofocus: false,
                                      obscureText: false,
                                      onChanged: (value) {
                                        authProviderr.TransactionsGet(
                                            search: value);
                                      },
                                      decoration: InputDecoration(
                                        suffixIcon: Icon(
                                          Icons.search_rounded,
                                          color: Color(0xFFA5A5A5),
                                          size: 24.0,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFA5A5A5),
                                          ),
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(23.0),
                                            topRight: Radius.circular(23.0)),
                                      ),
                                      builder: (context) {
                                        return StatefulBuilder(builder:
                                            (BuildContext context,
                                                StateSetter setState) {
                                          return Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    51, 51, 51, 1),
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(23),
                                                    topLeft:
                                                        Radius.circular(23))),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .7,
                                            child: Column(
                                              children: [
                                                Container(
                                                    height: 70,
                                                    decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            51, 51, 51, 1),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        23),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        23))),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 12.0,
                                                          vertical: 14),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Sort and Filter',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontSize: 24,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                ),
                                                          ),
                                                          Spacer(),
                                                          GestureDetector(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Image.asset(
                                                              'assets/images/Group 139 (1).png',
                                                              width: 25.0,
                                                              height: 25.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          )
                                                        ],
                                                      ),
                                                    )),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .4,
                                                      color: Color.fromRGBO(
                                                          81, 82, 83, 1),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                authProviderr
                                                                    .selectedFilterlist = 0;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 50,
                                                              color: authProviderr
                                                                          .selectedFilterlist ==
                                                                      0
                                                                  ? Color
                                                                      .fromRGBO(
                                                                          63,
                                                                          64,
                                                                          65,
                                                                          1)
                                                                  : Color
                                                                      .fromRGBO(
                                                                          81,
                                                                          82,
                                                                          83,
                                                                          1),
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  .36,
                                                              child: Center(
                                                                child: Text(
                                                                  'Sort by',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontSize:
                                                                            15,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: authProviderr.selectedFilterlist ==
                                                                                0
                                                                            ? Color.fromRGBO(
                                                                                190,
                                                                                243,
                                                                                151,
                                                                                1)
                                                                            : FlutterFlowTheme.of(context).primaryBtnText,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 1,
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                .3,
                                                            color:
                                                                Color.fromRGBO(
                                                                    89,
                                                                    91,
                                                                    92,
                                                                    1),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                authProviderr
                                                                    .selectedFilterlist = 1;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 50,
                                                              color: authProviderr
                                                                          .selectedFilterlist ==
                                                                      1
                                                                  ? Color
                                                                      .fromRGBO(
                                                                          63,
                                                                          64,
                                                                          65,
                                                                          1)
                                                                  : Color
                                                                      .fromRGBO(
                                                                          81,
                                                                          82,
                                                                          83,
                                                                          1),
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  .36,
                                                              child: Center(
                                                                child: Text(
                                                                  'Transaction type',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontSize:
                                                                            15,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: authProviderr.selectedFilterlist ==
                                                                                1
                                                                            ? Color.fromRGBO(
                                                                                190,
                                                                                243,
                                                                                151,
                                                                                1)
                                                                            : FlutterFlowTheme.of(context).primaryBtnText,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 1,
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                .3,
                                                            color:
                                                                Color.fromRGBO(
                                                                    89,
                                                                    91,
                                                                    92,
                                                                    1),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                authProviderr
                                                                    .selectedFilterlist = 2;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 50,
                                                              color: authProviderr
                                                                          .selectedFilterlist ==
                                                                      2
                                                                  ? Color
                                                                      .fromRGBO(
                                                                          63,
                                                                          64,
                                                                          65,
                                                                          1)
                                                                  : Color
                                                                      .fromRGBO(
                                                                          81,
                                                                          82,
                                                                          83,
                                                                          1),
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  .36,
                                                              child: Center(
                                                                child: Text(
                                                                  'Accounts',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontSize:
                                                                            15,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: authProviderr.selectedFilterlist ==
                                                                                2
                                                                            ? Color.fromRGBO(
                                                                                190,
                                                                                243,
                                                                                151,
                                                                                1)
                                                                            : FlutterFlowTheme.of(context).primaryBtnText,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 1,
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                .3,
                                                            color:
                                                                Color.fromRGBO(
                                                                    89,
                                                                    91,
                                                                    92,
                                                                    1),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    //listview
                                                    Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .4,
                                                      color: Color.fromRGBO(
                                                          63, 64, 65, 1),
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              .64,
                                                      child: ListView.builder(
                                                          shrinkWrap: true,
                                                          scrollDirection: Axis
                                                              .vertical,
                                                          itemCount: authProviderr
                                                                      .selectedFilterlist ==
                                                                  0
                                                              ? authProviderr
                                                                  .sortbyList
                                                                  .length
                                                              : authProviderr
                                                                          .selectedFilterlist ==
                                                                      1
                                                                  ? authProviderr
                                                                      .transactionStaticTypesList
                                                                      .length
                                                                  : authProviderr
                                                                              .selectedFilterlist ==
                                                                          2
                                                                      ? authProviderr
                                                                          .accounts!
                                                                          .data!
                                                                          .length
                                                                      : 0,
                                                          itemBuilder:
                                                              (BuildContext
                                                                      context,
                                                                  int i) {
                                                            var item = authProviderr
                                                                        .selectedFilterlist ==
                                                                    0
                                                                ? authProviderr
                                                                        .sortbyList[
                                                                    i]
                                                                : authProviderr
                                                                            .selectedFilterlist ==
                                                                        1
                                                                    ? authProviderr
                                                                            .transactionStaticTypesList[
                                                                        i]
                                                                    : authProviderr
                                                                        .accounts!
                                                                        .data![
                                                                            i]
                                                                        .name
                                                                        .toString();

                                                            bool isselected =
                                                                false;
                                                            if (authProviderr
                                                                    .selectedFilterlist ==
                                                                0) {
                                                              isselected =
                                                                  authProviderr
                                                                              .sortbyList[
                                                                          i] ==
                                                                      authProviderr
                                                                          .sort;
                                                            } else if (authProviderr
                                                                    .selectedFilterlist ==
                                                                1) {
                                                              isselected = authProviderr
                                                                          .transactionStaticTypesList[
                                                                      i] ==
                                                                  authProviderr
                                                                      .deduction_status;
                                                            } else if (authProviderr
                                                                    .selectedFilterlist ==
                                                                2) {
                                                              isselected = authProviderr
                                                                      .accounts!
                                                                      .data![i]
                                                                      .id ==
                                                                  authProviderr
                                                                      .account_id;
                                                            }
                                                            return GestureDetector(
                                                              onTap: () {
                                                                if (authProviderr
                                                                        .selectedFilterlist ==
                                                                    0) {
                                                                  authProviderr
                                                                          .sort =
                                                                      authProviderr
                                                                          .sortbyList[i];
                                                                } else if (authProviderr
                                                                        .selectedFilterlist ==
                                                                    1) {
                                                                  authProviderr
                                                                          .deduction_status =
                                                                      authProviderr
                                                                          .transactionStaticTypesList[i];
                                                                } else if (authProviderr
                                                                        .selectedFilterlist ==
                                                                    2) {
                                                                  authProviderr
                                                                          .account_id =
                                                                      authProviderr
                                                                          .accounts!
                                                                          .data![
                                                                              i]
                                                                          .id;
                                                                }
                                                                authProviderr
                                                                    .notifyListeners();

                                                                setState(() {});
                                                                authProviderr
                                                                    .TransactionsGet();
                                                              },
                                                              child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 20,
                                                                        left:
                                                                            25),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      isselected ==
                                                                              false
                                                                          ? Image
                                                                              .asset(
                                                                              'assets/images/emptySelectBox.png',
                                                                              width: 23.0,
                                                                              height: 23.0,
                                                                              fit: BoxFit.cover,
                                                                            )
                                                                          : Image
                                                                              .asset(
                                                                              'assets/images/selectedBox.png',
                                                                              width: 23.0,
                                                                              height: 23.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      ),
                                                                      Container(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            .42,
                                                                        child:
                                                                            Text(
                                                                          item,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontSize: 15,
                                                                                fontFamily: 'Poppins',
                                                                                color: isselected == true ? Color.fromRGBO(190, 243, 151, 1) : FlutterFlowTheme.of(context).primaryBtnText,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ]),
                                                              ),
                                                            );
                                                          }),
                                                    ),
                                                  ],
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    authProviderr.clearAll();
                                                    setState(() {});
                                                  },
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 35,
                                                              vertical: 15),
                                                      child: Text(
                                                        'Clear All',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                                fontSize: 15,
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color
                                                                    .fromRGBO(
                                                                        190,
                                                                        243,
                                                                        151,
                                                                        1)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        });
                                      });
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.filter_list_sharp,
                                      color: Color(0xFFDBEBFD),
                                      size: 24.0,
                                    ),
                                    Text(
                                      'Filter',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFDBEBFD),
                                            fontSize: 13.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        // Text(
                        //   '${authProviderr.Transactionsitems!.data!.length}',
                        //   style: TextStyle(color: Colors.white),
                        // ),
                        //TABS
                        Container(
                          height: MediaQuery.of(context).size.height * .05,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: authProviderr
                                  .transactionStaticTypesList.length,
                              itemBuilder: (BuildContext context, int i) {
                                String item =
                                    authProviderr.transactionStaticTypesList[i];
                                // print(item.deduction);

                                return GestureDetector(
                                  onTap: () async {
                                    if (item ==
                                        authProviderr.deduction_status) {
                                      authProviderr.deduction_status = '';
                                      await authProviderr.TransactionsGet();
                                    } else {
                                      print(
                                          'deduction_status: ${item.toString()}');
                                      authProviderr.deduction_status = item;
                                      await authProviderr.TransactionsGet();
                                    }
                                  },
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 3,
                                      ),
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color: item ==
                                                authProviderr.deduction_status
                                            ? Color(0xFFBEF397)
                                            : Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        border: Border.all(
                                          color: Color(0xFFA5A5A5),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 1.0, 0.0, 0.0),
                                        child: Text(
                                          item,
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: item ==
                                                        authProviderr
                                                            .deduction_status
                                                    ? Colors.black
                                                    : Color(0xFFA5A5A5),
                                                fontSize: 17.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        (authProviderr.loading == true)
                            ? loader()
                            : (authProviderr.Transactionsitems != null &&
                                    (authProviderr.Transactionsitems!.data ??
                                            [])
                                        .isNotEmpty)
                                ? Container(
                                    height: MediaQuery.of(context).size.height *
                                        .56,
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: authProviderr
                                            .Transactionsitems!.data!.length,
                                        itemBuilder:
                                            (BuildContext context, int i) {
                                          TransactionItem item = authProviderr
                                              .Transactionsitems!.data![i];
                                          // print(item.deduction);

                                          return item.merchantBusinessName == ''
                                              ? SizedBox.shrink()
                                              : InkWell(
                                                  onTap: () {
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
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 9,
                                                                top: 10,
                                                                bottom: 10),
                                                        child:
                                                            SingleChildScrollView(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  item.deductionStatus ==
                                                                              '' ||
                                                                          item.deductionStatus ==
                                                                              'LATER'
                                                                      ? Container(
                                                                          margin:
                                                                              EdgeInsets.only(left: 5),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/pendingTransactionIcon.png',
                                                                            width:
                                                                                23.0,
                                                                            height:
                                                                                23.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        )
                                                                      : item.deductionStatus ==
                                                                              'POSSIBLE'
                                                                          ? Container(
                                                                              margin: EdgeInsets.only(left: 5),
                                                                              child: Image.asset(
                                                                                'assets/images/possible.png',
                                                                                width: 23.0,
                                                                                height: 23.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            )
                                                                          : item.deductionStatus == 'NON-POSSIBLE'
                                                                              ? Container(
                                                                                  margin: EdgeInsets.only(left: 5),
                                                                                  child: Image.asset(
                                                                                    'assets/images/non_possible.png',
                                                                                    width: 23.0,
                                                                                    height: 23.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                )
                                                                              : item.deductionStatus == 'DEDUCTION'
                                                                                  ? Icon(
                                                                                      Icons.check_circle,
                                                                                      color: Color(0xFFBEF397),
                                                                                      size: 22.0,
                                                                                    )
                                                                                  : item.deductionStatus == 'NON-DEDUCTION'
                                                                                      ? Container(
                                                                                          margin: EdgeInsets.only(left: 5),
                                                                                          child: Image.asset(
                                                                                            'assets/images/nonDeductionTransaction.png',
                                                                                            width: 25.0,
                                                                                            height: 25.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        )
                                                                                      : Icon(
                                                                                          Icons.check_circle,
                                                                                          color: Color(0xFFBEF397),
                                                                                          size: 24.0,
                                                                                        ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        // item.deduction ==
                                                                        //         1
                                                                        //     ? Container()
                                                                        //     :
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * .45,
                                                                          child:
                                                                              Text(
                                                                            item.merchantBusinessName.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontSize: 14,
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        item.postDate ==
                                                                                null
                                                                            ? Container()
                                                                            : Text(
                                                                                formattedDatee.format(DateTime.parse(item.postDate!.toString())).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: Color(0xFFA5A5A5),
                                                                                      fontSize: 13.0,
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
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '${formatCurrency.format(item.amount)}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                            ),
                                                                      ),
                                                                      item.deduction ==
                                                                              1
                                                                          ? Container()
                                                                          : Container(
                                                                              width: MediaQuery.of(context).size.width * .25,
                                                                              child: Text(
                                                                                item.deduction!.subdivisionTitle.toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Poppins', color: Color(0xFFA5A5A5), fontSize: 11.0),
                                                                              ),
                                                                            ),
                                                                    ],
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {
                                                                      if (item.deduction ==
                                                                          1) {
                                                                      } else {
                                                                        print(
                                                                            'item: ${item.id}');
                                                                        Navigator
                                                                            .push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                            builder: (_) =>
                                                                                MoreInforWidget(
                                                                              item: item,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                    },
                                                                    icon: Icon(
                                                                      Icons
                                                                          .info_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                        height: 1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF202020),
                                                        ),
                                                      ),
                                                    ],
                                                  ));
                                        }),
                                  )
                                : authProviderr.Transactionsitems == null
                                    ? loader()
                                    : Center(
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 45.0, 0.0, 0.0),
                                              child: Text(
                                                'There are no\nTransactions',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          fontSize: 24.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
