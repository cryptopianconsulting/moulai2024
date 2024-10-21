import 'package:moulai1/all_expenses/all_expenses_widget.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';

import '../fetching_progress/fetching_progress_widget.dart';
import '../profile/profile_widget.dart';
import '../providers/auth_provider.dart';
import '../reviewed_page/reviewed_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'congratsScreen.dart';
import 'dashboard_model.dart';
import 'mainScreen.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  // late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  final formatCurrency = new NumberFormat.simpleCurrency();
  List<Widget> screen = [
    DashbaordMainScreen(),
    AllExpensesWidget(),
    ProfileWidget()
  ];

  @override
  void initState() {
    super.initState();
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    DashbaordMainScreen();
    AllExpensesWidget();
    ProfileWidget();
    authProvider.TransactionsGet();
    authProvider.LaterTransactionsGet();
    authProvider.getAmountsDeductions();
    authProvider.getpercent();

    authProvider.getCategoriesedTransactions(context, init: true);

    // await Future.delayed(Duration(seconds: 1));
    setState(() {});
    // _model = createModel(context, () => DashboardModel());
  }

  @override
  void dispose() {
    // _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final authProviderr = Provider.of<AuthProvider>(
      context,
    );

    return Scaffold(
      body: WillPopScope(
        onWillPop: () => Future<bool>.value(false),
        child: Stack(
          children: [
            screen[authProviderr.index],
            Positioned(
              bottom: 0,
              height: 90,
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () async {
                          setState(() {
                            authProviderr.index = 0;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SvgPicture.asset(
                              authProviderr.index == 0
                                  ? 'assets/images/tabler_home_green.svg'
                                  : 'assets/images/tabler_home_grey.svg',
                              width: 24.0,
                              height: 24.0,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Home',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: authProviderr.index == 0
                                        ? Color(0xFFBEF397)
                                        : Colors.grey,
                                    fontSize: 12.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            authProviderr.index = 1;
                          });
                        },
                        child: SvgPicture.asset(
                          authProviderr.index == 1
                              ? 'assets/images/Expenses_green.svg'
                              : 'assets/images/Expenses_grey.svg',
                          width: 55.0,
                          height: 38.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            authProviderr.index = 2;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SvgPicture.asset(
                              authProviderr.index == 2
                                  ? 'assets/images/Icon-park-green.svg'
                                  : 'assets/images/icon-park-grey.svg',
                              width: 21.0,
                              height: 21.0,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'More',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: authProviderr.index == 2
                                        ? Color(0xFFBEF397)
                                        : Colors.grey,
                                    fontSize: 12.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
