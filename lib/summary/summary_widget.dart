import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../loader.dart';
import '../models/expensesCategories.dart';
import '../models/reports.dart';
import '../providers/auth_provider.dart';
import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'summary_model.dart';
export 'summary_model.dart';

class SummaryWidget extends StatefulWidget {
  const SummaryWidget({Key? key}) : super(key: key);

  @override
  _SummaryWidgetState createState() => _SummaryWidgetState();
}

class _SummaryWidgetState extends State<SummaryWidget> {
  late SummaryModel _model;
  int touchedIndex = -1;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  late TooltipBehavior _tooltip;

  @override
  void initState() {
    super.initState();

    _tooltip = TooltipBehavior(enable: true);
    _model = createModel(context, () => SummaryModel());
    var authProviderr = Provider.of<AuthProvider>(context, listen: false);
    authProviderr.getCategoriess(context);
  }

  final formatCurrency = new NumberFormat.simpleCurrency();

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final authProvider = Provider.of<AuthProvider>(
      context,
    );
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: authProvider.loading == true
          ? loader()
          : SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      wrapWithModel(
                        model: _model.appBarModel,
                        updateCallback: () => setState(() {}),
                        child: AppBarWidget(),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 40.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF202020),
                                borderRadius: BorderRadius.circular(13.0),
                                border: Border.all(
                                  color: Color(0xFF374450),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 4.0),
                                    child: Text(
                                      'Total deductions',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    '${formatCurrency.format(authProvider.totalDeduction)}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFBEF397),
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 7.0, 0.0, 16.0),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 350.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF202020),
                                        borderRadius:
                                            BorderRadius.circular(13.0),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .6,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 50.0),
                                            child: PageView(
                                              controller:
                                                  _model.pageViewController ??=
                                                      PageController(
                                                          initialPage: 0),
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF232323),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          13.0,
                                                                          11.0,
                                                                          13.0,
                                                                          10.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'ATO Category',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFFDBEBFD),
                                                                          fontSize:
                                                                              17.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'Amount',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFFDBEBFD),
                                                                          fontSize:
                                                                              17.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            // Text(
                                                            //   "${authProvider.categories!.data!.length}",
                                                            //   style: TextStyle(
                                                            //       color: Colors
                                                            //           .white),
                                                            // ),
                                                            Container(
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  .4,
                                                              child: ListView
                                                                  .builder(
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis
                                                                              .vertical,
                                                                      itemCount: authProvider
                                                                          .categories!
                                                                          .data!
                                                                          .length,
                                                                      itemBuilder:
                                                                          (BuildContext context,
                                                                              int i) {
                                                                        Datum item = authProvider
                                                                            .categories!
                                                                            .data![i];
                                                                        return Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              25.0,
                                                                              0.0,
                                                                              20.0,
                                                                              10.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Container(
                                                                                width: MediaQuery.of(context).size.width * .5,
                                                                                child: Text(
                                                                                  item.classTitle.toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                '${formatCurrency.format(item.amount)}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      }),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          13.0,
                                                                          10.0,
                                                                          13.0,
                                                                          11.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Total deductions',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFFDBEBFD),
                                                                          fontSize:
                                                                              17.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    ' ${formatCurrency.format(authProvider.totalDeduction)}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFFDBEBFD),
                                                                          fontSize:
                                                                              17.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                //here
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SfCartesianChart(
                                                        primaryXAxis:
                                                            CategoryAxis(),
                                                        primaryYAxis:
                                                            NumericAxis(
                                                          minimum: 0,
                                                          maximum: authProvider
                                                              .maxNumber,
                                                          numberFormat:
                                                              NumberFormat
                                                                  .currency(
                                                                      locale:
                                                                          'en_In',
                                                                      symbol:
                                                                          "\$"),
                                                        ),
                                                        tooltipBehavior:
                                                            _tooltip,
                                                        series: <CartesianSeries<
                                                            ChartData, String>>[
                                                          ColumnSeries<
                                                              ChartData,
                                                              String>(
                                                            dataSource:
                                                                authProvider
                                                                    .data,
                                                            xValueMapper:
                                                                (ChartData data,
                                                                        _) =>
                                                                    data.x,
                                                            yValueMapper:
                                                                (ChartData data,
                                                                        _) =>
                                                                    data.y,
                                                            name: 'Deduction',
                                                            color:
                                                                Color.fromRGBO(
                                                              190,
                                                              243,
                                                              151,
                                                              1,
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13.0),
                                                  ),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      .4,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      AspectRatio(
                                                        aspectRatio: 1,
                                                        child: Row(
                                                          children: <Widget>[
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Container(
                                                                  height: 190,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .8,
                                                                  child:
                                                                      PieChart(
                                                                    PieChartData(
                                                                      pieTouchData:
                                                                          PieTouchData(
                                                                        touchCallback:
                                                                            (FlTouchEvent event,
                                                                                pieTouchResponse) {
                                                                          setState(
                                                                              () {
                                                                            if (!event.isInterestedForInteractions ||
                                                                                pieTouchResponse == null ||
                                                                                pieTouchResponse.touchedSection == null) {
                                                                              touchedIndex = -1;
                                                                              return;
                                                                            }
                                                                            touchedIndex =
                                                                                pieTouchResponse.touchedSection!.touchedSectionIndex;
                                                                          });
                                                                        },
                                                                      ),
                                                                      borderData:
                                                                          FlBorderData(
                                                                        show:
                                                                            false,
                                                                      ),
                                                                      sectionsSpace:
                                                                          0,
                                                                      centerSpaceRadius:
                                                                          40,
                                                                      sections:
                                                                          showingSections(
                                                                              authProvider.reports!),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: <Widget>[
                                                                    Row(
                                                                      children: [
                                                                        Indicator(
                                                                          color: Color.fromRGBO(
                                                                              175,
                                                                              244,
                                                                              198,
                                                                              1),
                                                                          text:
                                                                              'Deductions ',
                                                                          isSquare:
                                                                              false,
                                                                          textColor:
                                                                              Colors.white,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                        ),
                                                                        Text(
                                                                          '${formatCurrency.format(authProvider.reports!.data?.deduction)}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: Color(0xFFBEF397),
                                                                                fontSize: 15.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Indicator(
                                                                          color: Color.fromRGBO(
                                                                              255,
                                                                              199,
                                                                              194,
                                                                              1),
                                                                          text:
                                                                              'None Deductions',
                                                                          isSquare:
                                                                              false,
                                                                          textColor:
                                                                              Colors.white,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                        ),
                                                                        Text(
                                                                          '${formatCurrency.format(authProvider.reports!.data?.nonDeduction)}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: Color.fromRGBO(255, 199, 194, 1),
                                                                                fontSize: 15.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Indicator(
                                                                          color: Color.fromRGBO(
                                                                              122,
                                                                              199,
                                                                              255,
                                                                              1),
                                                                          text:
                                                                              'Possible',
                                                                          textColor:
                                                                              Colors.white,
                                                                          isSquare:
                                                                              false,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                        ),
                                                                        Text(
                                                                          '${formatCurrency.format(authProvider.reports!.data?.possible)}',
                                                                          // '${formatCurrency.format(authProvider.itemCount)}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: Color.fromRGBO(122, 199, 255, 1),
                                                                                fontSize: 15.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              width: 28,
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: smooth_page_indicator
                                                  .SmoothPageIndicator(
                                                controller: _model
                                                        .pageViewController ??=
                                                    PageController(
                                                        initialPage: 0),
                                                count: 3,
                                                axisDirection: Axis.horizontal,
                                                onDotClicked: (i) {
                                                  _model.pageViewController!
                                                      .animateToPage(
                                                    i,
                                                    duration: Duration(
                                                        milliseconds: 500),
                                                    curve: Curves.ease,
                                                  );
                                                },
                                                effect: smooth_page_indicator
                                                    .SlideEffect(
                                                  spacing: 5.0,
                                                  radius: 16.0,
                                                  dotWidth: 11.0,
                                                  dotHeight: 11.0,
                                                  dotColor: Color(0x89D2D2D2),
                                                  activeDotColor:
                                                      Color(0xFFA5A5A5),
                                                  paintStyle:
                                                      PaintingStyle.fill,
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  List<PieChartSectionData> showingSections(Reports report) {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color.fromRGBO(255, 199, 194, 1),
            value: double.parse(
                report.data!.nonDeductionPercentage!.toInt().toString()),
            title: '${report.data!.nonDeductionPercentage!.toInt()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color.fromRGBO(175, 244, 198, 1),
            value: double.parse(
                report.data!.deductionPercentage!.toInt().toString()),
            title: '${report.data!.deductionPercentage!.toInt().toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            value: double.parse(
                report.data!.possiblePercentage!.truncate().toString()),
            title: '${report.data!.possiblePercentage!.truncate().toString()}%',
            radius: radius,
            color: Color.fromRGBO(122, 199, 255, 1),
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              shadows: shadows,
            ),
          );

        default:
          throw Error();
      }
    });
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor,
  });

  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double y;
}
