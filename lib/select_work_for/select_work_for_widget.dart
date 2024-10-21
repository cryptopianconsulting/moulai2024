import 'package:moulai1/loader.dart';

import '../providers/auth_provider.dart';
import '../select_personal_deduction/select_personal_deduction_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'select_work_for_model.dart';
export 'select_work_for_model.dart';

class SelectWorkForWidget extends StatefulWidget {
  const SelectWorkForWidget({Key? key}) : super(key: key);

  @override
  _SelectWorkForWidgetState createState() => _SelectWorkForWidgetState();
}

class _SelectWorkForWidgetState extends State<SelectWorkForWidget> {
  late SelectWorkForModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectWorkForModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProviderr = Provider.of<AuthProvider>(
      context,
    );
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          // onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
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
                              20.0, 8.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: Image.asset(
                                    'assets/images/briefcase.png',
                                    width: 90.0,
                                    height: 90.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 18.0, 0.0, 0.0),
                                    child: Text(
                                      'What do you do for work?',
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
                                      'Search and choose all that apply.',
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 20.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 45.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF202020),
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: Color(0xFFA5A5A5),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 15.0, 0.0, 8.0),
                                            child: TextFormField(
                                              controller: _model.textController,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Nurse, Real Estate Agent, etc.',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFA5A5A5),
                                                          fontSize: 17.0,
                                                        ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                authProviderr.jobsSearch(value
                                                    .toString()
                                                    .toLowerCase());
                                              },
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 5.0, 5.0, 5.0),
                                          child: Icon(
                                            Icons.search_rounded,
                                            color: Color(0xFFA5A5A5),
                                            size: 30.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                if (authProviderr.jobs != [] &&
                                    ((authProviderr.jobs ?? []).isNotEmpty))
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 50,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          // physics: NeverScrollableScrollPhysics(),
                                          itemCount: authProviderr.jobs!.length,
                                          itemBuilder:
                                              (BuildContext context, int i) {
                                            return Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 2),
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              .5,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          authProviderr.jobs![i]
                                                              .occupation
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            authProviderr
                                                                .slectedJobsIds
                                                                .remove(authProviderr
                                                                    .jobs![i].id
                                                                    .toString());
                                                            authProviderr.jobs!
                                                                .remove(
                                                                    authProviderr
                                                                        .jobs![i]);
                                                            // authProviderr
                                                            //     .notifyListeners();
                                                          });
                                                        },
                                                        icon: Icon(
                                                          Icons.close,
                                                          size: 20,
                                                          color: Colors.white,
                                                        ))
                                                  ]),
                                            );
                                          }),
                                    ),
                                  ),
                                SizedBox(
                                  height: 8,
                                ),
                                authProviderr.loading == true
                                    ? loader()
                                    : Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Search results',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                ),
                                          ),
                                          ListView.builder(
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              itemCount: authProviderr
                                                  .jobsSearchitems!
                                                  .data!
                                                  .jobs!
                                                  .length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int i) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      if (authProviderr
                                                          .slectedJobsIds
                                                          .contains(authProviderr
                                                              .jobsSearchitems!
                                                              .data!
                                                              .jobs![i]
                                                              .id
                                                              .toString())) {
                                                        authProviderr
                                                            .slectedJobsIds
                                                            .remove(authProviderr
                                                                .jobsSearchitems!
                                                                .data!
                                                                .jobs![i]
                                                                .id
                                                                .toString());
                                                        authProviderr.jobs!
                                                            .remove(authProviderr
                                                                .jobsSearchitems!
                                                                .data!
                                                                .jobs![i]);
                                                      } else {
                                                        authProviderr
                                                            .slectedJobsIds
                                                            .add(authProviderr
                                                                .jobsSearchitems!
                                                                .data!
                                                                .jobs![i]
                                                                .id
                                                                .toString());
                                                        authProviderr.jobs!.add(
                                                            authProviderr
                                                                .jobsSearchitems!
                                                                .data!
                                                                .jobs![i]);
                                                      }
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              1.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 20,
                                                                height: 20,
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6),
                                                                  border: Border.all(
                                                                      color: authProviderr.slectedJobsIds.contains(authProviderr
                                                                              .jobsSearchitems!
                                                                              .data!
                                                                              .jobs![
                                                                                  i]
                                                                              .id
                                                                              .toString())
                                                                          ? Color(
                                                                              0xFFBEF397)
                                                                          : Colors
                                                                              .white),
                                                                  color: authProviderr.slectedJobsIds.contains(authProviderr
                                                                          .jobsSearchitems!
                                                                          .data!
                                                                          .jobs![
                                                                              i]
                                                                          .id
                                                                          .toString())
                                                                      ? Color(
                                                                          0xFFBEF397)
                                                                      : Colors
                                                                          .transparent,
                                                                ),
                                                                child: authProviderr
                                                                        .slectedJobsIds
                                                                        .contains(authProviderr
                                                                            .jobsSearchitems!
                                                                            .data!
                                                                            .jobs![
                                                                                i]
                                                                            .id
                                                                            .toString())
                                                                    ? Icon(
                                                                        Icons
                                                                            .check,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            15,
                                                                      )
                                                                    : SizedBox
                                                                        .shrink(),
                                                              ),
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    .79,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    authProviderr
                                                                        .jobsSearchitems!
                                                                        .data!
                                                                        .jobs![
                                                                            i]
                                                                        .occupation
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color: authProviderr.slectedJobsIds.contains(authProviderr.jobsSearchitems!.data!.jobs![i].id.toString())
                                                                              ? FlutterFlowTheme.of(context).primaryBtnText
                                                                              : Color(0xFFA5A5A5),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                        ],
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (authProviderr.jobs!.length != 0)
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SelectPersonalDeductionWidget(),
                        ),
                      );

                    // context.pushNamed(
                    //   'SelectAnualIncome',
                    //   extra: <String, dynamic>{
                    //     kTransitionInfoKey: TransitionInfo(
                    //       hasTransition: true,
                    //       transitionType: PageTransitionType.rightToLeft,
                    //       duration: Duration(milliseconds: 500),
                    //     ),
                    //   },
                    // );
                  },
                  text: 'Next',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: authProviderr.jobs!.isNotEmpty
                        ? Color(0xFFBEF397)
                        : Color(0xFFA5A5A5),
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
