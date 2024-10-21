import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'footer_bar_model.dart';
export 'footer_bar_model.dart';

class FooterBarWidget extends StatefulWidget {
  const FooterBarWidget({Key? key}) : super(key: key);

  @override
  _FooterBarWidgetState createState() => _FooterBarWidgetState();
}

class _FooterBarWidgetState extends State<FooterBarWidget> {
  late FooterBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooterBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        Container(
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
                    context.pushNamed(
                      'Dashboard',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 500),
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SvgPicture.asset(
                        'assets/images/tabler_home_grey.svg',
                        width: 24.0,
                        height: 24.0,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Home',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: Color(0xFFA5A5A5),
                              fontSize: 12.0,
                            ),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/Expenses_green.svg',
                  width: 55.0,
                  height: 38.0,
                  fit: BoxFit.cover,
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'Profile',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 500),
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        '',
                        width: 21.0,
                        height: 21.0,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'More',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: Color(0xFFA5A5A5),
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
      ],
    );
  }
}
