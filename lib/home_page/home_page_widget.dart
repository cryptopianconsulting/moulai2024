import 'dart:developer';

import 'package:moulai1/index.dart';
import 'package:moulai1/providers/auth_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../dashboard/dashboard_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1200));
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var apiToken = (prefs.getString('token') ?? '');
      print(apiToken);
      final authProviderr = Provider.of<AuthProvider>(context, listen: false);

      bool hasAccount = await authProviderr.getUserAccounts();
      log(hasAccount.toString());
      if (apiToken.toString().length > 10 && !hasAccount) {
        // await Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (_) => ConnectBankWidget(isFromWelcome: true),
        //   ),
        // );
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DashboardWidget(),
          ),
        );
      }
      // ignore: unnecessary_null_comparison
      else if (apiToken.toString().length > 10 && hasAccount) {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DashboardWidget(),
          ),
        );
      } else {
        context.pushNamed(
          'StartPage',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 500),
            ),
          },
        );
      }
    });
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
          child: Center(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: GradientText(
                'moulai.',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: Color(0xFF8BE28B),
                      fontSize: 45.0,
                      fontWeight: FontWeight.w500,
                    ),
                colors: [Color(0xFFBEF397), Colors.white],
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
