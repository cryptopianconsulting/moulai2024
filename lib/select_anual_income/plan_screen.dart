import 'package:flutter/material.dart';
import 'package:moulai1/select_anual_income/select_anual_income_widget.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '../providers/auth_provider.dart';
import 'bussinessWorkType.dart';

export 'select_anual_income_model.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late SelectAnualIncomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    // authProvider.selectPlanList = [];
    _model = createModel(context, () => SelectAnualIncomeModel());
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
    final authProviderr = Provider.of<AuthProvider>(
      context,
    );
    print(
        ':::::::::  ${authProviderr.selectPlanList.length}  ${authProviderr.navigationSelection.length}');
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              onTap: () {
                                authProviderr.navigationSelection = [];
                                authProviderr.selectedDeductionList = [];
                                authProviderr.selectedDeductionForRemovingNone =
                                    [];
                                authProviderr.deductionNumber = 0;
                                authProviderr.slectedJobsIds = [];
                                authProviderr.selectedDeductionForRemovingNone =
                                    [];
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
                        ),
                      ],
                    ),
                  ],
                ),
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
                              20.0, 8.0, 20.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: Image.asset(
                                    'assets/images/plan.png',
                                    width: 90.0,
                                    height: 90.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 18.0, 0.0, 0.0),
                                    child: Text(
                                      authProviderr
                                          .questionsModel!.data![3].question
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
                                ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: authProviderr.questionsModel!
                                        .data![3].answer!.length,
                                    itemBuilder: (BuildContext context, int i) {
                                      return GestureDetector(
                                        onTap: () {
                                          // print(
                                          //     ':::::::: ${authProviderr.questionsModel!.data![3].answer![i].id.toString()}');

                                          if (authProviderr.questionsModel!
                                                  .data![3].answer![i].answer
                                                  .toString() ==
                                              "No, I don't") {
                                            if (!authProviderr.selectPlanList
                                                .contains(authProviderr
                                                    .questionsModel!
                                                    .data![3]
                                                    .answer![i]
                                                    .id
                                                    .toString())) {
                                              print('hiiii222');
                                              authProviderr.selectPlanList = [];
                                              authProviderr.selectPlanList.add(
                                                  authProviderr.questionsModel!
                                                      .data![3].answer![i].id
                                                      .toString());
                                            } else {
                                              print('hiiiii 555');
                                              authProviderr.selectPlanList
                                                  .remove(authProviderr
                                                      .questionsModel!
                                                      .data![3]
                                                      .answer![i]
                                                      .id
                                                      .toString());
                                            }
                                          } else {
                                            if (authProviderr.selectPlanList
                                                .contains(authProviderr
                                                    .questionsModel!
                                                    .data![3]
                                                    .answer![i]
                                                    .id
                                                    .toString())) {
                                              print('hiiii111');
                                              authProviderr.selectPlanList
                                                  .remove(authProviderr
                                                      .questionsModel!
                                                      .data![3]
                                                      .answer![i]
                                                      .id
                                                      .toString());
                                            } else {
                                              print('hiiii333');
                                              authProviderr.selectPlanList
                                                  .remove('31');
                                              setState(() {
                                                authProviderr.selectPlanList
                                                    .add(authProviderr
                                                        .questionsModel!
                                                        .data![3]
                                                        .answer![i]
                                                        .id
                                                        .toString());
                                              });
                                            }
                                          }
                                          setState(() {});
                                        },
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 20.0, 0.0),
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
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 3.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 20,
                                                          height: 20,
                                                          margin:
                                                              EdgeInsets.all(
                                                                  10),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6),
                                                            border: Border.all(
                                                                color: authProviderr.selectPlanList.contains(authProviderr
                                                                        .questionsModel!
                                                                        .data![
                                                                            3]
                                                                        .answer![
                                                                            i]
                                                                        .id
                                                                        .toString())
                                                                    ? Color(
                                                                        0xFFBEF397)
                                                                    : Colors
                                                                        .white),
                                                            color: authProviderr
                                                                    .selectPlanList
                                                                    .contains(authProviderr
                                                                        .questionsModel!
                                                                        .data![
                                                                            3]
                                                                        .answer![
                                                                            i]
                                                                        .id
                                                                        .toString())
                                                                ? Color(
                                                                    0xFFBEF397)
                                                                : Colors
                                                                    .transparent,
                                                          ),
                                                          child: authProviderr
                                                                  .selectPlanList
                                                                  .contains(authProviderr
                                                                      .questionsModel!
                                                                      .data![3]
                                                                      .answer![
                                                                          i]
                                                                      .id
                                                                      .toString())
                                                              ? Icon(
                                                                  Icons.check,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 15,
                                                                )
                                                              : SizedBox
                                                                  .shrink(),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              authProviderr
                                                                  .questionsModel!
                                                                  .data![3]
                                                                  .answer![i]
                                                                  .answer
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    // ignore: unrelated_type_equality_checks
                                                                    color: authProviderr.selectPlanList.contains(authProviderr
                                                                            .questionsModel!
                                                                            .data![
                                                                                3]
                                                                            .answer![
                                                                                i]
                                                                            .id
                                                                            .toString())
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryBtnText
                                                                        : Color(
                                                                            0xFFA5A5A5),
                                                                    fontSize:
                                                                        15.0,
                                                                  ),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              maxLines: 1,
                                                            ),
                                                          ),
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (authProviderr.selectPlanList.isNotEmpty) {
                      print(authProviderr.homeSelected);
                      /*if (authProviderr.homeSelected &&
                          authProviderr.homeNavigated == false) {
                        authProviderr.homeNavigated = true;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => WorkFromHomeScreen(),
                          ),
                        );
                        // individual
                      } else*/
                      if (authProviderr.navigationSelection.length != 0 &&
                          authProviderr.selectedWorkType == 0.toString()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SelectAnualIncomeWidget(),
                          ),
                        );

                        //bussinesss
                      } else if (authProviderr.navigationSelection.length !=
                              0 &&
                          authProviderr.selectedWorkType == 1.toString()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BussinessWorkType(),
                          ),
                        );
                      }
                    }
                  },
                  text: 'Next',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: authProviderr.selectPlanList.length == 0
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
