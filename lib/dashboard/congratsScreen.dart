import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:moulai1/dashboard/mainScreen.dart';
import 'package:moulai1/flutter_flow/flutter_flow_theme.dart';
import 'package:moulai1/flutter_flow/flutter_flow_widgets.dart';
import 'package:moulai1/index.dart';
import 'package:provider/provider.dart';

import '../flutter_flow/flutter_flow_util.dart';
import '../providers/auth_provider.dart';

class Congrats extends StatefulWidget {
  Congrats({Key? key}) : super(key: key);

  @override
  _Congrats createState() => _Congrats();
}

class _Congrats extends State<Congrats> {
  void _showDialog() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(23.0), topRight: Radius.circular(23.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(20, 20, 20, 1),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(23), topLeft: Radius.circular(23))),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 39,
                ),
                const Text(
                  '11 DAYS LEFT',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.red),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  'The CPA Team will file your state & federal taxes',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFBEF397),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    minimumSize: Size(MediaQuery.of(context).size.height * 0.95,
                        50), //Change the button minimum width to 200 and height to 50
                  ),
                  child: const Text(
                    "Start filling taxes",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  final formatCurrency = new NumberFormat.simpleCurrency();

  @override
  Widget build(BuildContext context) {
    final authProviderr = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DashboardWidget(),
              ),
            );
          },
          icon: const Icon(Icons.home),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Lottie.asset('assets/images/celebration-1-1.json'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              const Text(
                'Awesome!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 22),
              Text(
                'You’ve claimed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                ' ${formatCurrency.format(authProviderr.totalDeduction)}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                ' worth of deductions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 51),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff141414),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    Container(
                      width: 60,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Color(0xffA5A5A5),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    SizedBox(height: 60),
                    Text(
                      'A CPA Team can file your taxes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 51),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'AskQuestion',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                              ),
                            },
                          );
                        },
                        text: 'Contact a CPA to fill your taxes',
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
                                    color: Colors.black,
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
                    SizedBox(height: 60)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
