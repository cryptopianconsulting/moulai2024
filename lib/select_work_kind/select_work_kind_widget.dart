import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:moulai1/loader.dart';
import 'package:moulai1/providers/auth_provider.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '../select_work_for/select_work_for_widget.dart';
import 'select_work_kind_model.dart';

export 'select_work_kind_model.dart';

class SelectWorkKindWidget extends StatefulWidget {
  const SelectWorkKindWidget({Key? key}) : super(key: key);

  @override
  _SelectWorkKindWidgetState createState() => _SelectWorkKindWidgetState();
}

class _SelectWorkKindWidgetState extends State<SelectWorkKindWidget> {
  late SelectWorkKindModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectWorkKindModel());
    // authProvider.getQuestionsRequest(
    //   context,
    // );
    // authProvider.jobsSearch(context, '');
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().userWorkKind = [];
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    _unFocusNode.dispose();
    super.dispose();
  }

  bool jobIsSelected = false;

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    context.watch<FFAppState>();

    return authProvider.loading == true
        ? loader(width: 100)
        : Scaffold(
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
                    /// Back button
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        15.0,
                        0.0,
                        0.0,
                      ),
                      child: Align(
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
                              Navigator.pop(context);
                              // setState(() {
                              //   authProvider.selectedJob = Selectedjob(
                              //     id: ' 0',
                              //     jobName: 'dasda',
                              //   );
                              // });
                              // context.pushNamed(
                              //   'StartPage',
                              //   extra: <String, dynamic>{
                              //     kTransitionInfoKey: TransitionInfo(
                              //       hasTransition: true,
                              //       transitionType:
                              //           PageTransitionType.leftToRight,
                              //       duration: const Duration(
                              //         milliseconds: 300,
                              //       ),
                              //     ),
                              //   },
                              // );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_left_outlined,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ),

                    /// Body content area
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0,
                                8.0,
                                0.0,
                                0.0,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                        0.0,
                                        24.0,
                                        0.0,
                                        0.0,
                                      ),
                                      child: Image.asset(
                                        'assets/images/briefcase.png',
                                        width: 90.0,
                                        height: 90.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(
                                        -1.0,
                                        0.0,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(
                                          0.0,
                                          18.0,
                                          0.0,
                                          0.0,
                                        ),
                                        child: Text(
                                          'Please choose what best describes your tax filing status?',
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
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(
                                          0.0,
                                          6.0,
                                          0.0,
                                          0.0,
                                        ),
                                        child: Text(
                                          'We’ll look for common deductions that apply to your profession',
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
                                      itemCount: authProvider.questionsModel!
                                          .data![0].answer!.length,
                                      itemBuilder:
                                          (BuildContext context, int i) {
                                        return GestureDetector(
                                          behavior: HitTestBehavior.opaque,
                                          onTap: () {
                                            setState(() {
                                              authProvider.slectedJobsIds = [];
                                              authProvider.jobs = [];
                                              authProvider
                                                  .selectedDeductionList = [];
                                              authProvider
                                                  .selectedDeductionForRemovingNone = [];
                                              authProvider.selectedWorkType =
                                                  i.toString();
                                              authProvider.selectedJob =
                                                  Selectedjob(
                                                id: authProvider.questionsModel!
                                                    .data![0].answer![i].id
                                                    .toString(),
                                                jobName: authProvider
                                                    .questionsModel!
                                                    .data![0]
                                                    .answer![i]
                                                    .answer
                                                    .toString(),
                                              );

                                              authProvider.notifyListeners();
                                              jobIsSelected = true;
                                            });
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
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                  10.0,
                                                  0.0,
                                                  10.0,
                                                  0.0,
                                                ),
                                                child: Padding(
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
                                                      /// Checkbox
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
                                                          value: authProvider
                                                                      .selectedJob!
                                                                      .id
                                                                      .toString() ==
                                                                  authProvider
                                                                      .questionsModel!
                                                                      .data![0]
                                                                      .answer![
                                                                          i]
                                                                      .id
                                                                      .toString()
                                                              ? true
                                                              : false,
                                                          onChanged:
                                                              (newValue) async {
                                                            authProvider
                                                                    .selectedWorkType =
                                                                i.toString();
                                                            authProvider
                                                                    .selectedJob =
                                                                Selectedjob(
                                                              id: authProvider
                                                                  .questionsModel!
                                                                  .data![0]
                                                                  .answer![i]
                                                                  .id
                                                                  .toString(),
                                                              jobName: authProvider
                                                                  .questionsModel!
                                                                  .data![0]
                                                                  .answer![i]
                                                                  .answer
                                                                  .toString(),
                                                            );

                                                            authProvider
                                                                .notifyListeners();
                                                            jobIsSelected =
                                                                true;
                                                            setState(() {});
                                                          },
                                                          activeColor:
                                                              const Color(
                                                                  0xFFBEF397),
                                                          checkColor:
                                                              Colors.white,
                                                        ),
                                                      ),

                                                      /// Work type
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
                                                              .data![0]
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
                                                                color: authProvider
                                                                            .selectedJob!.id ==
                                                                        authProvider
                                                                            .questionsModel!
                                                                            .data![
                                                                                0]
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

                    /// Next button
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0,
                        0.0,
                        16.0,
                        10.0,
                      ),
                      child: FFButtonWidget(
                        onPressed: (jobIsSelected == false)
                            ? null
                            : () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => SelectWorkForWidget(),
                                  ),
                                );
                                // context.pushNamed(
                                //   'SelectWorkFor',
                                //   extra: <String, dynamic>{
                                //     kTransitionInfoKey: TransitionInfo(
                                //       hasTransition: true,
                                //       transitionType:
                                //           PageTransitionType.rightToLeft,
                                //       duration: Duration(milliseconds: 500),
                                //     ),
                                //   },
                                // );
                                // context.pushNamed(
                                //   'SelectPersonalDeduction',
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
                        text: 'Next',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60.0,
                          color: const Color(0xFFBEF397),
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
