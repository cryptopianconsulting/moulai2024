// ignore_for_file: must_be_immutable

import '../connect_bank/connect_bank_widget.dart';
import '../dashboard/dashboard_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'welcome_back_page_model.dart';
export 'welcome_back_page_model.dart';

class WelcomeBackPageWidget extends StatefulWidget {
  WelcomeBackPageWidget({this.hasAccount = false, Key? key}) : super(key: key);
  bool hasAccount;
  @override
  _WelcomeBackPageWidgetState createState() => _WelcomeBackPageWidgetState();
}

class _WelcomeBackPageWidgetState extends State<WelcomeBackPageWidget> {
  late WelcomeBackPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeBackPageModel());
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2000));
      if (widget.hasAccount == true) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DashboardWidget()),
        );
        // context.pushNamed(
        //   'Dashboard',
        //   extra: <String, dynamic>{
        //     kTransitionInfoKey: TransitionInfo(
        //       hasTransition: true,
        //       transitionType: PageTransitionType.rightToLeft,
        //       duration: Duration(milliseconds: 500),
        //     ),
        //   },
        // );
      } else if (widget.hasAccount == false) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ConnectBankWidget()),
        );
        // context.pushNamed(
        //   'ConnectBank',
        //   extra: <String, dynamic>{
        //     kTransitionInfoKey: TransitionInfo(
        //       hasTransition: true,
        //       transitionType: PageTransitionType.rightToLeft,
        //       duration: Duration(milliseconds: 500),
        //     ),
        //   },
        // );
      }
    });
    // On page load action.
    // SchedulerBinding.instance.addPostFrameCallback((_) async {
    //   await Future.delayed(const Duration(milliseconds: 2000));
    //   if (valueOrDefault<bool>(currentUserDocument?.isLinkedBank, false)) {
    //     if (valueOrDefault<bool>(currentUserDocument?.isPurchasedPlan, false)) {
    //       context.pushNamed(
    //         'Dashboard',
    //         extra: <String, dynamic>{
    //           kTransitionInfoKey: TransitionInfo(
    //             hasTransition: true,
    //             transitionType: PageTransitionType.rightToLeft,
    //             duration: Duration(milliseconds: 500),
    //           ),
    //         },
    //       );
    //     } else {
    //       context.pushNamed(
    //         'FindTotalDeductions',
    //         extra: <String, dynamic>{
    //           kTransitionInfoKey: TransitionInfo(
    //             hasTransition: true,
    //             transitionType: PageTransitionType.rightToLeft,
    //             duration: Duration(milliseconds: 500),
    //           ),
    //         },
    //       );
    //     }
    //   } else {
    //     context.pushNamed(
    //       'ConnectBank',
    //       extra: <String, dynamic>{
    //         kTransitionInfoKey: TransitionInfo(
    //           hasTransition: true,
    //           transitionType: PageTransitionType.rightToLeft,
    //           duration: Duration(milliseconds: 500),
    //         ),
    //       },
    //     );
    //   }
    // });
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: widget.hasAccount == false
              ? Container()
              : Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xFFBEF397),
                          size: 40.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Text(
                        'Welcome Back !',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFBEF397),
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
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
