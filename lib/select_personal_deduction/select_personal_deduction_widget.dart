import 'package:flutter/material.dart';
import 'package:moulai1/select_anual_income/plan_screen.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '../providers/auth_provider.dart';
import '../select_anual_income/bussinessWorkType.dart';
import '../select_anual_income/select_anual_income_widget.dart';
import '../select_anual_income/workFromHome.dart';
import 'select_personal_deduction_model.dart';

export 'select_personal_deduction_model.dart';

class SelectPersonalDeductionWidget extends StatefulWidget {
  const SelectPersonalDeductionWidget({Key? key}) : super(key: key);

  @override
  _SelectPersonalDeductionWidgetState createState() =>
      _SelectPersonalDeductionWidgetState();
}

class _SelectPersonalDeductionWidgetState
    extends State<SelectPersonalDeductionWidget> {
  late SelectPersonalDeductionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.answer = authProvider.questionsModel!.data![3].answer!
        .where((element) =>
            element.accountType.toString() ==
            authProvider.selectedWorkType.toString())
        .toList();
    authProvider.navigationSelection = [];
    authProvider.deductionNumber = 0;
    _model = createModel(context, () => SelectPersonalDeductionModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unFocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(
                  0.0,
                  15.0,
                  0.0,
                  0.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        /// Back Icon
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0,
                              0.0,
                              0.0,
                              0.0,
                            ),
                            child: InkWell(
                              onTap: () async {
                                setState(() {
                                  authProvider.navigationSelection = [];
                                  authProvider.selectedDeductionList = [];
                                  authProvider
                                      .selectedDeductionForRemovingNone = [];
                                  authProvider.deductionNumber = 0;
                                  Navigator.pop(context);
                                });
                              },
                              child: const Icon(
                                Icons.keyboard_arrow_left_outlined,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          ),
                        ),

                        /// Star Image
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              125.0,
                              15.0,
                              0.0,
                              0.0,
                            ),
                            child: Image.asset(
                              'assets/images/star.png',
                              width: 22.0,
                              height: 21.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        /// Star Image
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              100.0,
                              45.0,
                              0.0,
                              0.0,
                            ),
                            child: Image.asset(
                              'assets/images/star.png',
                              width: 16.0,
                              height: 15.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        /// Star Image
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              170.0,
                              30.0,
                              0.0,
                              0.0,
                            ),
                            child: Image.asset(
                              'assets/images/star.png',
                              width: 16.0,
                              height: 15.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        /// Deduction and Categories
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            35.0,
                            0.0,
                            0.0,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              /// Deduction Number
                              Text(
                                authProvider.deductionNumber.toInt().toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),

                              /// DEDUCTION CATEGORIES
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                ),
                                child: Text(
                                  'DEDUCTION\nCATEGORIES',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /// Deductions and Categories Grid View Builder
              Align(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Horizontal Line
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 4.0,
                        color: Color(0xFF202020),
                      ),

                      /// Which deductions apply to you?
                      Align(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0,
                            18.0,
                            0.0,
                            0.0,
                          ),
                          child: Text(
                            authProvider.questionsModel!.data![5].question
                                .toString()
                                .split('personal ')
                                .join(),
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

                      /// Pick all that apply.
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0,
                            6.0,
                            0.0,
                            0.0,
                          ),
                          child: Text(
                            'Pick all that apply.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFFA5A5A5),
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ),

                      /// Vertical Space
                      const SizedBox(height: 15),

                      /// Deductions and Categories Grid View Builder
                      Container(
                        height: MediaQuery.of(context).size.height * .5,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 250,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: authProvider.answer!.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext ctx, index) {
                            // String accountType = authProviderr
                            //     .questionsModel!
                            //     .data![3]
                            //     .answer![index]
                            //     .accountType
                            //     .toString();

                            return
                                // accountType !=
                                //         authProviderr.selectedWorkType
                                //             .toString()
                                //     ? Container()
                                //     :
                                GestureDetector(
                              onTap: () {
                                if (authProvider.answer![index].answer ==
                                    'None of the above') {
                                  if (authProvider.selectedDeductionList
                                      .contains(authProvider.answer![index].id
                                          .toString())) {
                                    authProvider.selectedDeductionList.remove(
                                        authProvider.answer![index].id
                                            .toString());
                                    authProvider.navigationSelection.remove(
                                        authProvider.answer![index].answer
                                            .toString());
                                    authProvider
                                        .selectedDeductionForRemovingNone
                                        .remove(authProvider.answer![index].id
                                            .toString());
                                  } else {
                                    authProvider
                                        .selectedDeductionForRemovingNone
                                        .forEach((id) {
                                      authProvider.selectedDeductionList
                                          .remove(id);
                                    });
                                    authProvider
                                        .selectedDeductionForRemovingNone = [];
                                    authProvider.navigationSelection = [];
                                    authProvider.deductionNumber = 0;
                                    authProvider.selectedDeductionList.add(
                                        authProvider.answer![index].id
                                            .toString());
                                    authProvider.navigationSelection.add(
                                        authProvider.answer![index].answer
                                            .toString());

                                    authProvider
                                        .selectedDeductionForRemovingNone
                                        .add(authProvider.answer![index].id
                                            .toString());
                                  }
                                } else {
                                  if (authProvider.selectedDeductionList
                                      .contains(authProvider.answer![index].id
                                          .toString())) {
                                    authProvider.deductionNumber -=
                                        authProvider.answer![index].count;
                                    authProvider.selectedDeductionList.remove(
                                        authProvider.answer![index].id
                                            .toString());
                                    authProvider.navigationSelection.remove(
                                        authProvider.answer![index].answer
                                            .toString());
                                    authProvider
                                        .selectedDeductionForRemovingNone
                                        .remove(authProvider.answer![index].id
                                            .toString());
                                  } else {
                                    authProvider.deductionNumber +=
                                        authProvider.answer![index].count;
                                    authProvider.selectedDeductionList.add(
                                        authProvider.answer![index].id
                                            .toString());
                                    authProvider.navigationSelection.add(
                                        authProvider.answer![index].answer
                                            .toString());

                                    authProvider
                                        .selectedDeductionForRemovingNone
                                        .add(authProvider.answer![index].id
                                            .toString());
                                    authProvider.selectedDeductionList.remove(
                                        authProvider
                                            .answer![
                                                authProvider.answer!.length - 1]
                                            .id
                                            .toString());
                                  }
                                }

                                authProvider.notifyListeners();
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF202020),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 2.0,
                                      color: Color(0xFFBEF397),
                                      offset: Offset(0.0, 0.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                              color: authProvider
                                                      .selectedDeductionList
                                                      .contains(authProvider
                                                          .answer![index].id
                                                          .toString())
                                                  ? const Color(0xFFBEF397)
                                                  : Colors.white,
                                            ),
                                            color: authProvider
                                                    .selectedDeductionList
                                                    .contains(authProvider
                                                        .answer![index].id
                                                        .toString())
                                                ? const Color(0xFFBEF397)
                                                : Colors.transparent,
                                          ),
                                          child: authProvider
                                                  .selectedDeductionList
                                                  .contains(authProvider
                                                      .answer![index].id
                                                      .toString())
                                              ? const Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                  size: 15,
                                                )
                                              : const SizedBox.shrink(),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                              0.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .3,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    authProvider
                                                        .answer![index].answer
                                                        .toString(),
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              color: authProvider
                                                                      .selectedDeductionList
                                                                      .contains(authProvider
                                                                          .answer![
                                                                              index]
                                                                          .id
                                                                          .toString())
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText
                                                                  : const Color(
                                                                      0xFFA5A5A5),
                                                              fontSize: 14.0,
                                                            ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// Spacer
              const Spacer(),

              /// Next Button
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(
                  16.0,
                  0.0,
                  16.0,
                  10.0,
                ),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (authProvider.navigationSelection.isNotEmpty) {
                      bool containsHome = false;
                      bool containsTransportExpenses = false;
                      bool containsTravel = false;

                      for (String stringg in authProvider.navigationSelection) {
                        if (stringg.toLowerCase().contains('home')) {
                          containsHome = true;
                        } else if (stringg
                            .toLowerCase()
                            .contains('transport expenses')) {
                          containsTransportExpenses = true;
                        } else if (stringg.toLowerCase().contains('travel')) {
                          containsTravel = true;
                        }
                      }

                      if (containsHome) {
                        if (containsTransportExpenses) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => WorkFromHomeScreen(
                                containsTransportExpenses: true,
                              ),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => WorkFromHomeScreen(),
                            ),
                          );
                        }
                      } else if (containsTransportExpenses) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => PlanScreen()),
                        );
                      } else if (containsTravel) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => PlanScreen()),
                        );
                      } else if (authProvider.navigationSelection.length != 0 &&
                          authProvider.selectedWorkType == '0') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SelectAnualIncomeWidget(),
                          ),
                        );
                      } else if (authProvider.navigationSelection.length != 0 &&
                          authProvider.selectedWorkType == '1') {
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
                    color: authProvider.navigationSelection.isNotEmpty
                        ? const Color(0xFFBEF397)
                        : const Color(0xFFA5A5A5),
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
                    disabledColor: const Color(0xFFA5A5A5),
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
