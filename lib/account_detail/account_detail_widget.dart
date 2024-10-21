import '../providers/auth_provider.dart';
import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'account_detail_model.dart';
export 'account_detail_model.dart';

class AccountDetailWidget extends StatefulWidget {
  const AccountDetailWidget({Key? key}) : super(key: key);

  @override
  _AccountDetailWidgetState createState() => _AccountDetailWidgetState();
}

class _AccountDetailWidgetState extends State<AccountDetailWidget> {
  late AccountDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountDetailModel());
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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Main content of the screen
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  /// Header with back button and title text of the screen
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0,
                      30.0,
                      0.0,
                      0.0,
                    ),
                    child: Stack(
                      children: [
                        /// Back button
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

                        /// Title text of the screen
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            3.0,
                            0.0,
                            0.0,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Account details',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFFDBEBFD),
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// First name text
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        20.0,
                        35.0,
                        0.0,
                        0.0,
                      ),
                      child: Text(
                        'First Name',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFFA5A5A5),
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),

                  /// First name text field
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                      16.0,
                      5.0,
                      16.0,
                      25.0,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 49.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFF202020),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: const Color(0xFFA5A5A5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                          21.0,
                          15.0,
                          0.0,
                          0.0,
                        ),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            authProvider.userName.toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFFA5A5A5),
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// Last name text
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        20.0,
                        0.0,
                        0.0,
                        0.0,
                      ),
                      child: Text(
                        'Last Name',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFFA5A5A5),
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),

                  /// Last name text field
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                      16.0,
                      5.0,
                      16.0,
                      25.0,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 49.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFF202020),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: const Color(0xFFA5A5A5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                          21.0,
                          15.0,
                          0.0,
                          0.0,
                        ),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            authProvider.last_name.toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFFA5A5A5),
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// Email address text
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        20.0,
                        0.0,
                        0.0,
                        0.0,
                      ),
                      child: Text(
                        'Email address',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFFA5A5A5),
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),

                  /// Email address text field
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                      16.0,
                      5.0,
                      16.0,
                      25.0,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 49.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFF202020),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: const Color(0xFFA5A5A5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                          21.0,
                          15.0,
                          0.0,
                          0.0,
                        ),
                        child: Text(
                          authProvider.email.toString(),
                          // currentUserEmail,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFFA5A5A5),
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /// Log out button
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                      16.0,
                      0.0,
                      16.0,
                      24.0,
                    ),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        await signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.pushNamedAuth(
                          'StartPage',
                          mounted,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: const Duration(milliseconds: 500),
                            ),
                          },
                        );
                      },
                      text: 'Log out',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 58.0,
                        color: const Color(0xFF202020),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: const Color(0xFFBEF397),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding:
                  //       EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  //   child: InkWell(
                  //     onTap: () async {
                  //       await deleteUser(context);
                  //
                  //       context.goNamedAuth('WelcomeDeductionPage', mounted);
                  //     },
                  //     child: Text(
                  //       'Delete moula. account',
                  //       style: FlutterFlowTheme.of(context).bodyMedium.override(
                  //             fontFamily: 'Poppins',
                  //             color: Color(0xFFFB5959),
                  //           ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
