import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:moulai1/flutter_flow/flutter_flow_theme.dart';
import 'package:moulai1/flutter_flow/flutter_flow_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymentAndBilling extends StatefulWidget {
  const PaymentAndBilling({super.key});

  @override
  State<PaymentAndBilling> createState() => _PaymentAndBillingState();
}

class _PaymentAndBillingState extends State<PaymentAndBilling> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text(
            'Payment & Billing',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  fontSize: 16.0,
                ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(16, 30, 16, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your plan details',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(vertical: 16),
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
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Premium: \$29 ',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Text(
                          '/mo',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFA5A5A5),
                                    fontSize: 12.0,
                                  ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Billed annually, \$234/yr',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFA5A5A5),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Valid till: Mar. 15, 2024',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      fontSize: 16.0,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Renews on: mar. 15, 2024',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Color(0xFFA5A5A5),
                      ),
                ),
              ),
              _button(),
              _divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Billing support / help',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 20.0,
                        ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              _divider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _button() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: FFButtonWidget(
        onPressed: () async {
          if (Platform.isAndroid) {
            /// Android-specific code
            final url = Uri.parse(
              'http://play.google.com/store/account/subscriptions',
            );
            _launchInWebViewOrVC(url);
          } else if (Platform.isIOS) {
            /// iOS-specific code
            final url = Uri.parse(
              'https://apps.apple.com/account/subscriptions',
            );
            _launchInWebViewOrVC(url);
          }
        },
        text: 'Cancel Plan  >',
        options: FFButtonOptions(
          width: double.infinity,
          height: 63.0,
          color: Color(0xFFBEF397),
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Poppins',
                color: Color(0xFF0D0E0F),
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  /// Launches the given URL
  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
        headers: <String, String>{
          'my_header_key': 'my_header_value',
        },
      ),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Widget _divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Divider(
        color: Color(0xFFA5A5A5),
      ),
    );
  }
}
