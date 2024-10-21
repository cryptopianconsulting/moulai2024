import '../dashboard/dashboard_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'send_email_model.dart';
export 'send_email_model.dart';

class SendEmailWidget extends StatefulWidget {
  const SendEmailWidget({Key? key}) : super(key: key);

  @override
  _SendEmailWidgetState createState() => _SendEmailWidgetState();
}

class _SendEmailWidgetState extends State<SendEmailWidget> {
  late SendEmailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SendEmailModel());
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
      backgroundColor: Color(0xFF0D0E0F),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Align(
                    //   alignment: AlignmentDirectional(-1.0, 0.0),
                    //   child: Padding(
                    //     padding:
                    //         EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    //     child: InkWell(
                    //       onTap: () async {
                    //         Navigator.pop(context);
                    //       },
                    //       child: Icon(
                    //         Icons.keyboard_arrow_left_outlined,
                    //         color: Colors.white,
                    //         size: 30.0,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 88.0, 0.0, 22.0),
                      child: Image.asset(
                        'assets/images/emailsend.png',
                        // width: MediaQuery.of(context).size.width * 0.55,
                        // height: MediaQuery.of(context).size.height * 0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Email sent!',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(18.0, 20.0, 18.0, 40.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DashboardWidget(),
                        ),
                      );
                    },
                    text: 'Back to dashboard',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 48.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFBEF397),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                      borderRadius: BorderRadius.circular(10.0),
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
