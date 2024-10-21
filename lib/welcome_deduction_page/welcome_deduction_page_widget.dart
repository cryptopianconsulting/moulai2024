import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '../providers/auth_provider.dart';
import '../sign_up/sign_up_widget.dart';
import 'welcome_deduction_page_model.dart';

export 'welcome_deduction_page_model.dart';

class WelcomeDeductionPageWidget extends StatefulWidget {
  const WelcomeDeductionPageWidget({Key? key}) : super(key: key);

  @override
  _WelcomeDeductionPageWidgetState createState() =>
      _WelcomeDeductionPageWidgetState();
}

class _WelcomeDeductionPageWidgetState
    extends State<WelcomeDeductionPageWidget> {
  late WelcomeDeductionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => WelcomeDeductionPageModel());
  }


  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(
      context,
    );
    // context.watch<FFAppState>();

    return FutureBuilder<List<FrolloUsersRecord>>(
      future: queryFrolloUsersRecordOnce(
        queryBuilder: (frolloUsersRecord) =>
            frolloUsersRecord.where('uid', isEqualTo: currentUserUid),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        // if (!snapshot.hasData) {
        //   return Center(
        //     child: SizedBox(
        //       width: 50.0,
        //       height: 50.0,
        //       child: CircularProgressIndicator(
        //         color: FlutterFlowTheme.of(context).primary,
        //       ),
        //     ),
        //   );
        // }
        // List<FrolloUsersRecord> welcomeDeductionPageFrolloUsersRecordList =
        //     snapshot.data!;
        // // Return an empty Container when the item does not exist.
        // if (snapshot.data!.isEmpty) {
        //   return Container();
        // }
        // final welcomeDeductionPageFrolloUsersRecord =
        //     welcomeDeductionPageFrolloUsersRecordList.isNotEmpty
        //         ? welcomeDeductionPageFrolloUsersRecordList.first
        //         : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
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
                                //     Navigator.pop(context);
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
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/logo2.png',
                            width: 307.0,
                            height: 307.0,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                190.0, 100.0, 0.0, 0.0),
                            child: Image.asset(
                              'assets/images/star.png',
                              width: 16.0,
                              height: 15.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                90.0, 120.0, 0.0, 0.0),
                            child: Image.asset(
                              'assets/images/star.png',
                              width: 16.0,
                              height: 15.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                110.0, 90.0, 0.0, 0.0),
                            child: Image.asset(
                              'assets/images/star.png',
                              width: 23.0,
                              height: 23.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                110.0, 100.0, 110.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  authProvider.deductionNumber
                                      .toInt()
                                      .toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  'DEDUCTION\nCATEGORIES',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 30.0, 20.0, 0.0),
                        child: Text(
                          'A.I. will analyze your expenses across 29\nmillion merchants to  find all business and  personal deductions applicable to you',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFA5A5A5),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 40.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SignUpWidget(),
                            ),
                          );
                          // context.pushNamed(
                          //   'ConfirmLegalName',
                          //   extra: <String, dynamic>{
                          //     kTransitionInfoKey: TransitionInfo(
                          //       hasTransition: true,
                          //       transitionType: PageTransitionType.rightToLeft,
                          //       duration: Duration(milliseconds: 500),
                          //     ),
                          //   },
                          // );
                        },
                        text: 'Find my deductions',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFBEF397),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0D0E0F),
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
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
