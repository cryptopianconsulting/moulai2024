import 'package:flutter/material.dart';
import 'package:moulai1/select_anual_income/plan_screen.dart';
import 'package:moulai1/select_anual_income/workFromHome.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '../providers/auth_provider.dart';
import '../welcome_deduction_page/welcome_deduction_page_widget.dart';
import 'select_anual_income_model.dart';

export 'select_anual_income_model.dart';

class BussinessWorkType extends StatefulWidget {
  const BussinessWorkType({Key? key}) : super(key: key);

  @override
  _BussinessWorkTypeState createState() => _BussinessWorkTypeState();
}

class _BussinessWorkTypeState extends State<BussinessWorkType> {
  late SelectAnualIncomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectAnualIncomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  String? selectedId;

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
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 16),
                    child: InkWell(
                      onTap: () async {
                        authProviderr.navigationSelection = [];
                        authProviderr.selectedDeductionList = [];
                        authProviderr.selectedDeductionForRemovingNone = [];
                        authProviderr.deductionNumber = 0;
                        authProviderr.slectedJobsIds = [];
                        authProviderr.selectedDeductionForRemovingNone = [];
                        authProviderr.selectedDeductionList = [];
                        authProviderr.notifyListeners();
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_arrow_left_outlined,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 100),
                  Image.asset(
                    'assets/images/briefcase.png',
                    width: 90.0,
                    height: 90.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 18.0, 0.0, 0.0),
                                    child: Text(
                                      authProviderr
                                          .questionsModel!.data![6].question
                                          .toString(),
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
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 6.0, 0.0, 0.0),
                                    child: Text(
                                      'This will help us find better deductions',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFA5A5A5),
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ListView.builder(
                                      padding: EdgeInsets.only(bottom: 0),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: authProviderr.questionsModel!
                                          .data![6].answer!.length,
                                      itemBuilder:
                                          (BuildContext context, int i) {
                                        return GestureDetector(
                                          onTap: () {
                                            selectedId = authProviderr
                                                .questionsModel!
                                                .data![6]
                                                .answer![i]
                                                .id
                                                .toString();
                                            print(authProviderr
                                                .selectedDeductionList.length);
                                            if (selectedId ==
                                                authProviderr.questionsModel!
                                                    .data![6].answer![i].id
                                                    .toString()) {
                                              authProviderr
                                                  .selectedDeductionList
                                                  .add(authProviderr
                                                      .questionsModel!
                                                      .data![6]
                                                      .answer![i]
                                                      .id
                                                      .toString());
                                              authProviderr
                                                  .selectedDeductionList
                                                  .remove(authProviderr
                                                      .questionsModel!
                                                      .data![6]
                                                      .answer![i]
                                                      .id
                                                      .toString());
                                            } else {
                                              authProviderr
                                                  .selectedDeductionList
                                                  .add(authProviderr
                                                      .questionsModel!
                                                      .data![6]
                                                      .answer![i]
                                                      .id
                                                      .toString());
                                              authProviderr
                                                  .selectedDeductionList
                                                  .remove(authProviderr
                                                      .questionsModel!
                                                      .data![6]
                                                      .answer![i]
                                                      .id
                                                      .toString());
                                            }

                                            authProviderr.notifyListeners();

                                            setState(() {});
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF202020),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 5,
                                                              horizontal: 1),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  Color(
                                                                      0xFFA5A5A5),
                                                            ),
                                                            child: Checkbox(
                                                              value: selectedId ==
                                                                      null
                                                                  ? false
                                                                  : selectedId ==
                                                                          authProviderr
                                                                              .questionsModel!
                                                                              .data![6]
                                                                              .answer![i]
                                                                              .id
                                                                              .toString()
                                                                      ? true
                                                                      : false,
                                                              onChanged:
                                                                  (newValue) async {
                                                                selectedId = authProviderr
                                                                    .questionsModel!
                                                                    .data![6]
                                                                    .answer![i]
                                                                    .id
                                                                    .toString();

                                                                setState(() {});
                                                                if (selectedId ==
                                                                    authProviderr
                                                                        .questionsModel!
                                                                        .data![
                                                                            6]
                                                                        .answer![
                                                                            i]
                                                                        .id
                                                                        .toString()) {
                                                                  authProviderr
                                                                      .selectedDeductionList
                                                                      .add(authProviderr
                                                                          .questionsModel!
                                                                          .data![
                                                                              6]
                                                                          .answer![
                                                                              i]
                                                                          .id
                                                                          .toString());
                                                                  authProviderr
                                                                      .selectedDeductionList
                                                                      .remove(authProviderr
                                                                          .questionsModel!
                                                                          .data![
                                                                              6]
                                                                          .answer![
                                                                              i]
                                                                          .id
                                                                          .toString());
                                                                } else {
                                                                  authProviderr
                                                                      .selectedDeductionList
                                                                      .add(authProviderr
                                                                          .questionsModel!
                                                                          .data![
                                                                              6]
                                                                          .answer![
                                                                              i]
                                                                          .id
                                                                          .toString());
                                                                  authProviderr
                                                                      .selectedDeductionList
                                                                      .remove(authProviderr
                                                                          .questionsModel!
                                                                          .data![
                                                                              6]
                                                                          .answer![
                                                                              i]
                                                                          .id
                                                                          .toString());
                                                                }

                                                                authProviderr
                                                                    .notifyListeners();

                                                                setState(() {});
                                                              },
                                                              activeColor: Color(
                                                                  0xFFBEF397),
                                                              checkColor:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            00.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  children: [
                                                                    Text(
                                                                      authProviderr
                                                                          .questionsModel!
                                                                          .data![
                                                                              6]
                                                                          .answer![
                                                                              i]
                                                                          .answer
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            // ignore: unrelated_type_equality_checks
                                                                            color: selectedId == authProviderr.questionsModel!.data![6].answer![i].id.toString()
                                                                                ? FlutterFlowTheme.of(context).primaryBtnText
                                                                                : Color(0xFFA5A5A5),
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 3,
                                                              ),
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    .65,
                                                                child: Text(
                                                                  authProviderr
                                                                      .questionsModel!
                                                                      .data![6]
                                                                      .answer![
                                                                          i]
                                                                      .description
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        // ignore: unrelated_type_equality_checks
                                                                        color: selectedId ==
                                                                                authProviderr.questionsModel!.data![6].answer![i].id.toString()
                                                                            ? FlutterFlowTheme.of(context).primaryBtnText
                                                                            : Color(0xFFA5A5A5),
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 8,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    // Align(
                                                    //   alignment:
                                                    //       AlignmentDirectional(
                                                    //           0.05, 0.0),
                                                    //   child: Padding(
                                                    //     padding:
                                                    //         EdgeInsetsDirectional
                                                    //             .fromSTEB(
                                                    //                 40.0,
                                                    //                 0.0,
                                                    //                 0.0,
                                                    //                 10.0),
                                                    //     child: Text(
                                                    //       'Freelancers, independent consultants, side hustles, etc.',
                                                    //       textAlign:
                                                    //           TextAlign
                                                    //               .start,
                                                    //       style: FlutterFlowTheme
                                                    //               .of(context)
                                                    //           .bodyMedium
                                                    //           .override(
                                                    //             fontFamily:
                                                    //                 'Poppins',
                                                    //             color: _model.checkbox1Value!
                                                    //                 ? FlutterFlowTheme.of(context)
                                                    //                     .primaryBtnText
                                                    //                 : Color(
                                                    //                     0xFFA5A5A5),
                                                    //             fontSize:
                                                    //                 15.0,
                                                    //             fontWeight:
                                                    //                 FontWeight
                                                    //                     .w300,
                                                    //             lineHeight:
                                                    //                 1.2,
                                                    //           ),
                                                    //     ),
                                                    //   ),
                                                    // ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
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
              Padding(
                padding: EdgeInsetsDirectional.all(16),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (selectedId != null) {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => WelcomeDeductionPageWidget(),
                        ),
                      );
                    }
                  },
                  text: 'Next',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: selectedId == null
                        ? Color(0xFFA5A5A5)
                        : Color(0xFFBEF397),
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
                    disabledColor: Color(0xFFA5A5A5),
                    disabledTextColor:
                        FlutterFlowTheme.of(context).primaryBtnText,
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
