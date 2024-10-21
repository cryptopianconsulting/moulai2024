import 'package:flutter/material.dart';
import 'package:moulai1/select_work_kind/select_work_kind_widget.dart';
import 'package:provider/provider.dart';

import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '../providers/auth_provider.dart';
import 'no_account_model.dart';

export 'no_account_model.dart';

class NoAccountWidget extends StatefulWidget {
  const NoAccountWidget({Key? key}) : super(key: key);

  @override
  _NoAccountWidgetState createState() => _NoAccountWidgetState();
}

class _NoAccountWidgetState extends State<NoAccountWidget> {
  late NoAccountModel _model;

  @override
  void initState() {
    super.initState();

    _model = createModel(context, () => NoAccountModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    final authProvider = Provider.of<AuthProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            wrapWithModel(
              model: _model.appBarModel,
              updateCallback: () {},
              child: AppBarWidget(),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/tabler_mail_(1).png',
                  width: 60.0,
                  height: 58.0,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Text(
                    'Account doesn’t exist',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Text(
                  'Try logging in with a different account or\ncontinue with signup',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFA5A5A5),
                        fontSize: 17.0,
                      ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        authProvider.slectedJobsIds = [];
                        authProvider.jobs = [];
                        authProvider.selectedDeductionList = [];
                        authProvider.selectedDeductionForRemovingNone = [];
                        Navigator.pop(context);
                        Navigator.pop(context);
                        authProvider.getQuestionsRequest(context);
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SelectWorkKindWidget(),
                          ),
                        );
                        // context.pushNamed(
                        //   'SelectWorkKind',
                        //   extra: <String, dynamic>{
                        //     kTransitionInfoKey: TransitionInfo(
                        //       hasTransition: true,
                        //       transitionType: PageTransitionType.rightToLeft,
                        //       duration: Duration(milliseconds: 500),
                        //     ),
                        //   },
                        // );
                      },
                      text: 'Continue to signup',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 60.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        // context.pushNamed(
                        //   'LogIn',
                        //   extra: <String, dynamic>{
                        //     kTransitionInfoKey: TransitionInfo(
                        //       hasTransition: true,
                        //       transitionType: PageTransitionType.rightToLeft,
                        //       duration: Duration(milliseconds: 300),
                        //     ),
                        //   },
                        // );
                      },
                      child: Text(
                        'Retry login with a different account',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFBEF397),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
