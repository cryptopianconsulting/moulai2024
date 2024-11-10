// ignore_for_file: deprecated_member_use

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'standard_plan_model.dart';
export 'standard_plan_model.dart';

class BasicPlanWidget extends StatefulWidget {
  const BasicPlanWidget({Key? key}) : super(key: key);

  @override
  _BasicPlanWidgetState createState() => _BasicPlanWidgetState();
}

class _BasicPlanWidgetState extends State<BasicPlanWidget> {
  late StandardPlanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StandardPlanModel());
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    BackButton(color: Colors.white),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: GradientText(
                            'moulai.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF8BE28B),
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            colors: [Color(0xFFBEF397), Colors.white],
                            gradientDirection: GradientDirection.ltr,
                            gradientType: GradientType.linear,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 25.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 16.0),
                              child: Text(
                                'Activate 7-day free trial',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                          // Text(
                          //   'Select plan for more details',
                          //   textAlign: TextAlign.center,
                          //   style: FlutterFlowTheme.of(context)
                          //       .bodyMedium
                          //       .override(
                          //         fontFamily: 'Poppins',
                          //         color: Color(0xFFA5A5A5),
                          //       ),
                          // ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF202020),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0xFFBEF397),
                                    offset: Offset(0.0, 0.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(9.0),
                                border: Border.all(
                                  color: Color(0xFFBEF397),
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 10.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Basic',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.maybePop(context);
                                          },
                                          child: FaIcon(
                                            FontAwesomeIcons.solidCheckSquare,
                                            color: Color(0xFFBEF397),
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '\$7',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Text(
                                          '/mo',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFA5A5A5),
                                                fontSize: 12.0,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'billed annually',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFA5A5A5),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 15.0, 15.0, 15.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF2D2D2D),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 17.0, 0.0, 5.0),
                                            child: Text(
                                              '\$84 per year. Cancel anytime.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x89D2D2D2),
                                                        fontSize: 14.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 5.0, 0.0, 17.0),
                                            child: Text(
                                              '\$58 per year after tax deduction',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x89D2D2D2),
                                                        fontSize: 14.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.xmark,
                                          color: Color(0xFFEE1111),
                                          size: 14.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'All tax filings with CPA',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .copyWith(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  fontSize: 14.0,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationColor: Colors
                                                      .white70
                                                      .withOpacity(0.3),
                                                ),
                                          ),
                                        ),
                                        Text(
                                          ' - federal, state',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .copyWith(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                fontSize: 14.0,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                decorationColor: Colors.white70
                                                    .withOpacity(0.3),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.xmark,
                                          color: Color(0xFFEE1111),
                                          size: 14.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Tax audit insurance',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .copyWith(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  fontSize: 14.0,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationColor: Colors
                                                      .white70
                                                      .withOpacity(0.3),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.check,
                                          color: Color(0xFFBEF397),
                                          size: 12.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'A.I. deductions tracking',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontSize: 14.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.check,
                                          color: Color(0xFFBEF397),
                                          size: 12.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Maximum tax savings',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontSize: 12.0,
                                                ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ),
                                        Text(
                                          ' -\$3500 on average',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 12.0,
                                                fontStyle: FontStyle.italic,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.xmark,
                                          color: Color(0xFFEE1111),
                                          size: 14.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Unlimited CPA advice',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .copyWith(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  fontSize: 14.0,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationColor: Colors
                                                      .white70
                                                      .withOpacity(0.3),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.xmark,
                                          color: Color(0xFFEE1111),
                                          size: 14.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Designated CPA',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .copyWith(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  fontSize: 14.0,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationColor: Colors
                                                      .white70
                                                      .withOpacity(0.3),
                                                ),
                                          ),
                                        ),
                                        Text(
                                          ' -zoom call',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .copyWith(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                fontSize: 12.0,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontStyle: FontStyle.italic,
                                                decorationColor: Colors.white70
                                                    .withOpacity(0.3),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 0.0, 30.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.xmark,
                                          color: Color(0xFFEE1111),
                                          size: 14.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'All entities S Gorp,  K-1s, etc.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .copyWith(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  fontSize: 14.0,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationColor: Colors
                                                      .white70
                                                      .withOpacity(0.3),
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
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      // final paymentResponse = await processStripePayment(
                      //   context,
                      //   amount: 10099,
                      //   currency: 'USD',
                      //   customerEmail: currentUserEmail,
                      //   customerName: currentUserDisplayName,
                      //   description: 'Plan payment',
                      //   allowGooglePay: true,
                      //   allowApplePay: false,
                      // );
                      // if (paymentResponse.paymentId == null) {
                      //   if (paymentResponse.errorMessage != null) {
                      //     showSnackbar(
                      //       context,
                      //       'Error: ${paymentResponse.errorMessage}',
                      //     );
                      //   }
                      //   return;
                      // }
                      // _model.paymentId = paymentResponse.paymentId!;

                      context.goNamed('Dashboard');

                      // setState(() {});
                    },
                    text: 'Continue with basic',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 63.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFBEF397),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF0D0E0F),
                                fontSize: 17.0,
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
      ),
    );
  }
}
