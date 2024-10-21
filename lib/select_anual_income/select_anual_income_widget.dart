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

class SelectAnualIncomeWidget extends StatefulWidget {
  const SelectAnualIncomeWidget({Key? key}) : super(key: key);

  @override
  _SelectAnualIncomeWidgetState createState() =>
      _SelectAnualIncomeWidgetState();
}

class _SelectAnualIncomeWidgetState extends State<SelectAnualIncomeWidget> {
  late SelectAnualIncomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectAnualIncomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unFocusNode.dispose();
    super.dispose();
  }

  String? selectedId;

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
              /// Back Button
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
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.keyboard_arrow_left_outlined,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// Icon, Question and Description
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0,
                            8.0,
                            20.0,
                            0.0,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0,
                                    24.0,
                                    0.0,
                                    0.0,
                                  ),
                                  child: Image.asset(
                                    'assets/images/uil_wallet.png',
                                    width: 90.0,
                                    height: 90.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      18.0,
                                      0.0,
                                      0.0,
                                    ),
                                    child: Text(
                                      authProvider
                                          .questionsModel!.data![5].question
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
                                  alignment: const AlignmentDirectional(
                                    -1.0,
                                    0.0,
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      6.0,
                                      0.0,
                                      0.0,
                                    ),
                                    child: Text(
                                      'This will help us find better deductions',
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
                                ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: authProvider
                                      .questionsModel!.data![5].answer!.length,
                                  itemBuilder: (BuildContext context, int i) {
                                    return GestureDetector(
                                      onTap: () {
                                        selectedId = authProvider
                                            .questionsModel!
                                            .data![5]
                                            .answer![i]
                                            .id
                                            .toString();
                                        print(authProvider
                                            .selectedDeductionList.length);
                                        if (selectedId ==
                                            authProvider.questionsModel!
                                                .data![5].answer![i].id
                                                .toString()) {
                                          authProvider.selectedDeductionList
                                              .add(authProvider.questionsModel!
                                                  .data![5].answer![i].id
                                                  .toString());
                                          authProvider.selectedDeductionList
                                              .remove(authProvider
                                                  .questionsModel!
                                                  .data![5]
                                                  .answer![i]
                                                  .id
                                                  .toString());
                                        } else {
                                          authProvider.selectedDeductionList
                                              .add(authProvider.questionsModel!
                                                  .data![5].answer![i].id
                                                  .toString());
                                          authProvider.selectedDeductionList
                                              .remove(authProvider
                                                  .questionsModel!
                                                  .data![5]
                                                  .answer![i]
                                                  .id
                                                  .toString());
                                        }

                                        authProvider.notifyListeners();

                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(
                                          0.0,
                                          24.0,
                                          20.0,
                                          0.0,
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF202020),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                              10.0,
                                              0.0,
                                              10.0,
                                              0.0,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                    0.0,
                                                    10.0,
                                                    0.0,
                                                    3.0,
                                                  ),
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
                                                              const Color(
                                                                  0xFFA5A5A5),
                                                        ),
                                                        child: Checkbox(
                                                          value: selectedId ==
                                                                  null
                                                              ? false
                                                              : selectedId ==
                                                                      authProvider
                                                                          .questionsModel!
                                                                          .data![
                                                                              5]
                                                                          .answer![
                                                                              i]
                                                                          .id
                                                                          .toString()
                                                                  ? true
                                                                  : false,
                                                          onChanged:
                                                              (newValue) async {
                                                            selectedId =
                                                                authProvider
                                                                    .questionsModel!
                                                                    .data![5]
                                                                    .answer![i]
                                                                    .id
                                                                    .toString();

                                                            setState(() {});
                                                            if (selectedId ==
                                                                authProvider
                                                                    .questionsModel!
                                                                    .data![5]
                                                                    .answer![i]
                                                                    .id
                                                                    .toString()) {
                                                              authProvider
                                                                  .selectedDeductionList
                                                                  .add(authProvider
                                                                      .questionsModel!
                                                                      .data![5]
                                                                      .answer![
                                                                          i]
                                                                      .id
                                                                      .toString());
                                                              authProvider
                                                                  .selectedDeductionList
                                                                  .remove(authProvider
                                                                      .questionsModel!
                                                                      .data![5]
                                                                      .answer![
                                                                          i]
                                                                      .id
                                                                      .toString());
                                                            } else {
                                                              authProvider
                                                                  .selectedDeductionList
                                                                  .add(authProvider
                                                                      .questionsModel!
                                                                      .data![5]
                                                                      .answer![
                                                                          i]
                                                                      .id
                                                                      .toString());
                                                              authProvider
                                                                  .selectedDeductionList
                                                                  .remove(authProvider
                                                                      .questionsModel!
                                                                      .data![5]
                                                                      .answer![
                                                                          i]
                                                                      .id
                                                                      .toString());
                                                            }

                                                            authProvider
                                                                .notifyListeners();

                                                            setState(() {});
                                                          },
                                                          activeColor:
                                                              const Color(
                                                                  0xFFBEF397),
                                                          checkColor:
                                                              Colors.white,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                          10.0,
                                                          0.0,
                                                          0.0,
                                                          0.0,
                                                        ),
                                                        child: Text(
                                                          authProvider
                                                              .questionsModel!
                                                              .data![5]
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
                                                                color: selectedId ==
                                                                        authProvider
                                                                            .questionsModel!
                                                                            .data![
                                                                                5]
                                                                            .answer![
                                                                                i]
                                                                            .id
                                                                            .toString()
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText
                                                                    : const Color(
                                                                        0xFFA5A5A5),
                                                                fontSize: 18.0,
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
                                  },
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
                    if (selectedId != null) {
                      print(authProvider.homeSelected);
                      Navigator.push(
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
                    color: selectedId == null
                        ? const Color(0xFFA5A5A5)
                        : const Color(0xFFBEF397),
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
