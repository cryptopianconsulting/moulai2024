import 'package:moulai1/account_plan/account_plan_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../account_linked/account_linked_widget.dart';
import '../privacy_policy/privacy_policy_widget.dart';
import '../providers/auth_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unFocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// Moulai gradient text
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        7.0,
                        0.0,
                        0.0,
                      ),
                      child: Stack(
                        children: [
                          GradientText(
                            'moulai.',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            colors: [
                              const Color(0xFFBEF397),
                              FlutterFlowTheme.of(context).primaryBtnText
                            ],
                            gradientDirection: GradientDirection.ltr,
                            gradientType: GradientType.linear,
                          ),
                          // Align(
                          //   alignment: AlignmentDirectional(0.9, 0.0),
                          //   child: Padding(
                          //     padding: EdgeInsetsDirectional.fromSTEB(
                          //         0.0, 10.0, 0.0, 0.0),
                          //     child: Container(
                          //       width: 76.0,
                          //       height: 33.0,
                          //       decoration: BoxDecoration(
                          //         color: Color(0xFF202020),
                          //         borderRadius: BorderRadius.circular(20.0),
                          //       ),
                          //       child: Padding(
                          //         padding: EdgeInsetsDirectional.fromSTEB(
                          //             5.0, 0.0, 0.0, 0.0),
                          //         child: Row(
                          //           mainAxisSize: MainAxisSize.max,
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceEvenly,
                          //           children: [
                          //             Text(
                          //               '2023',
                          //               style: FlutterFlowTheme.of(context)
                          //                   .bodyMedium
                          //                   .override(
                          //                     fontFamily: 'Poppins',
                          //                     color: Color(0xFFDBEBFD),
                          //                     fontSize: 17.0,
                          //                   ),
                          //             ),
                          //             Icon(
                          //               Icons.keyboard_arrow_down_rounded,
                          //               color: FlutterFlowTheme.of(context)
                          //                   .primaryBtnText,
                          //               size: 24.0,
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),

                    /// Padding space between moulai and user name
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        10.0,
                        0.0,
                        0.0,
                      ),
                    ),

                    /// User Name
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        10.0,
                        0.0,
                        0.0,
                      ),
                      child: Text(
                        authProvider.userName.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFFDBEBFD),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    // Padding(
                    //   padding:
                    //       EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                    //   child: Text(
                    //     'Real Estate Administrator',
                    //     style: FlutterFlowTheme.of(context).bodyMedium.override(
                    //           fontFamily: 'Poppins',
                    //           color: Color(0xFFA5A5A5),
                    //           fontSize: 13.0,
                    //           fontWeight: FontWeight.normal,
                    //         ),
                    //   ),
                    // ),

                    /// Three main image button
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        26.0,
                        0.0,
                        40.0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          /// Linked Accounts
                          InkWell(
                            onTap: () {
                              context.pushNamed(
                                'LinkedAccounts',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                    duration: const Duration(milliseconds: 500),
                                  ),
                                },
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                /// Icon
                                Container(
                                  width: 64.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF202020),
                                    borderRadius: BorderRadius.circular(11.0),
                                  ),
                                  child: Icon(
                                    Icons.account_balance_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 30.0,
                                  ),
                                ),

                                /// Text Linked Accounts
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0,
                                    8.0,
                                    0.0,
                                    0.0,
                                  ),
                                  child: Text(
                                    'Linked\naccounts',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFFDBEBFD),
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          /// Plans and Bills
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => AccountPlanWidget(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                /// Image
                                Stack(
                                  children: [
                                    Container(
                                      width: 64.0,
                                      height: 64.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF202020),
                                        borderRadius:
                                            BorderRadius.circular(11.0),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                        20.0,
                                        15.0,
                                        0.0,
                                        0.0,
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/images/billPlan.svg',
                                        width: 30.0,
                                        height: 30.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),

                                /// Text Plans and Billing
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0,
                                    8.0,
                                    0.0,
                                    0.0,
                                  ),
                                  child: Text(
                                    'Plans &\nBilling',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFFDBEBFD),
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          /// Account Settings
                          InkWell(
                            onTap: () {
                              context.pushNamed(
                                'AccountDetail',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                },
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                /// Icon
                                Container(
                                  width: 64.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF202020),
                                    borderRadius: BorderRadius.circular(11.0),
                                  ),
                                  child: Icon(
                                    Icons.settings_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 30.0,
                                  ),
                                ),

                                /// Text Account Details
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0,
                                    8.0,
                                    0.0,
                                    0.0,
                                  ),
                                  child: Text(
                                    'Account\ndetails',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFFDBEBFD),
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Divider line
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        18.0,
                        0.0,
                        18.0,
                        0.0,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 1.0,
                        color: const Color(0xFF202020),
                      ),
                    ),

                    /// Vertical space
                    const SizedBox(height: 28),

                    /// Privacy Tab Button
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PrivacyPolicyWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 18),
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        height: 64.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF202020),
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.privacy_tip, color: Colors.white),
                            const SizedBox(width: 21),
                            Text(
                              'Privacy',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFFDBEBFD),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),

                    /// Vertical space
                    const SizedBox(height: 19),

                    /// Contact Us Tab Button
                    InkWell(
                      onTap: () async {
                        String? encodeQueryParameters(
                            Map<String, String> params) {
                          return params.entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&');
                        }

                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'mailto:contact@moulai.io',
                          query: encodeQueryParameters(
                            <String, String>{
                              'subject': 'How can we help you?',
                            },
                          ),
                        );
                        await launchUrl(emailLaunchUri);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 18),
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        height: 64.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF202020),
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/contactUs.png',
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 21),
                            Text(
                              'Contact Us',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFFDBEBFD),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 20,
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
    );
  }
}
