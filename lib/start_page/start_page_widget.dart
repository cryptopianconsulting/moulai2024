import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:moulai1/select_work_kind/select_work_kind_widget.dart';
import 'package:moulai1/sign_up/sign_up_widget.dart';
import 'package:moulai1/standard/ios_payment_queue_delegate.dart';
import 'package:moulai1/web_view_screen.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '../log_in/log_in_widget.dart';
import '../providers/auth_provider.dart';
import 'start_page_model.dart';

export 'start_page_model.dart';

class StartPageWidget extends StatefulWidget {
  const StartPageWidget({Key? key}) : super(key: key);

  @override
  _StartPageWidgetState createState() => _StartPageWidgetState();
}

// const String _kSubscriptionId = 'moulai_year_subscription';
// const List<String> _kProductIds = <String>[_kSubscriptionId];

class _StartPageWidgetState extends State<StartPageWidget> {
  // final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  // late StreamSubscription<List<PurchaseDetails>> _subscription;

  // List<ProductDetails> _products = <ProductDetails>[];

  // late StartPageModel _model;

  @override
  void initState() {
    // final Stream<List<PurchaseDetails>> purchaseUpdated =
    //     _inAppPurchase.purchaseStream;
    // _subscription = purchaseUpdated.listen(
    //   (List<PurchaseDetails> purchaseDetailsList) {
    //     _listenToPurchaseUpdated(purchaseDetailsList);
    //   },
    //   onDone: () {
    //     _subscription.cancel();
    //   },
    //   onError: (Object error) {
    //     // handle error here.
    //   },
    // );
    // initStoreInfo();
    super.initState();
    // _model = createModel(context, () => StartPageModel());
  }

  // Future<void> initStoreInfo() async {
  //   final bool isAvailable = await _inAppPurchase.isAvailable();
  //   print('isAvailable :::: $isAvailable');
  //   if (!isAvailable) {
  //     setState(() {
  //       _products = <ProductDetails>[];
  //     });
  //     return;
  //   }
  //
  //   if (Platform.isIOS) {
  //     final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
  //         _inAppPurchase
  //             .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
  //     await iosPlatformAddition.setDelegate(IosPaymentQueueDelegate());
  //   }
  //
  //   final ProductDetailsResponse productDetailResponse =
  //       await _inAppPurchase.queryProductDetails(_kProductIds.toSet());
  //
  //   ///
  //   log('\nProduct Detail Response || Product Details ::::\n${productDetailResponse.productDetails.length}\n\n');
  //
  //   if (productDetailResponse.error != null) {
  //     setState(() {
  //       _products = productDetailResponse.productDetails;
  //     });
  //     return;
  //   }
  //
  //   if (productDetailResponse.productDetails.isEmpty) {
  //     setState(() {
  //       _products = productDetailResponse.productDetails;
  //     });
  //     return;
  //   }
  //
  //   setState(() {
  //     _products = productDetailResponse.productDetails;
  //   });
  // }

  @override
  void dispose() {
    // if (Platform.isIOS) {
    //   final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
    //       _inAppPurchase
    //           .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
    //   iosPlatformAddition.setDelegate(null);
    // }
    // _subscription.cancel();

    // _model.dispose();
    super.dispose();
  }

  void showPendingUI() {
    setState(() {});
  }

  void handleError(IAPError error) {
    setState(() {});
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) {
    // IMPORTANT!! Always verify a purchase before delivering the product.
    // For the purpose of an example, we directly return true.
    return Future<bool>.value(true);
  }

  void _handleInvalidPurchase(PurchaseDetails purchaseDetails) {
    // handle invalid purchase here if  _verifyPurchase` failed.
  }

  // Future<void> _listenToPurchaseUpdated(
  //   List<PurchaseDetails> purchaseDetailsList,
  // ) async {
  //   for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
  //     if (purchaseDetails.status == PurchaseStatus.pending) {
  //       showPendingUI();
  //     } else {
  //       if (purchaseDetails.status == PurchaseStatus.error) {
  //         handleError(purchaseDetails.error!);
  //       } else if (purchaseDetails.status == PurchaseStatus.purchased ||
  //           purchaseDetails.status == PurchaseStatus.restored) {
  //         final bool valid = await _verifyPurchase(purchaseDetails);
  //         if (valid) {
  //           /// TODO: Update the database with the purchased item
  //           log('purchaseDetails => $purchaseDetails');
  //         } else {
  //           _handleInvalidPurchase(purchaseDetails);
  //           return;
  //         }
  //       }
  //       if (Platform.isAndroid) {
  //         if (purchaseDetails.productID == _kSubscriptionId) {
  //           final InAppPurchaseAndroidPlatformAddition androidAddition =
  //               _inAppPurchase.getPlatformAddition<
  //                   InAppPurchaseAndroidPlatformAddition>();
  //           await androidAddition.consumePurchase(purchaseDetails);
  //         }
  //       }
  //       if (purchaseDetails.pendingCompletePurchase) {
  //         await _inAppPurchase.completePurchase(purchaseDetails);
  //       }
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // context.watch<FFAppState>();
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: Color(0xFF0D0E0F),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: GradientText(
                  'moulai.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
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
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 8),
                child: Column(
                  children: [
                    Text(
                      'A.I. finds tax deductions',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Australians  save avg. of \$3,700',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFA5A5A5),
                              fontSize: 15.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 32.0, 40.0, 0.0),
                      child: Image.asset(
                        'assets/images/AI.png',
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 220.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {

                            authProvider.getQuestionsRequest(
                              context,
                            );
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SelectWorkKindWidget(),
                                // builder: (_) => SignUpWidget(),
                              ),
                            );
                          },
                          text: 'Get Started           ',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFBEF397),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF0D0E0F),
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
                      Align(
                        alignment: AlignmentDirectional(0.3, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 34.0, 0.0, 0.0),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 21.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFA5A5A5),
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => LogInWidget(),
                                ),
                              );
                              // context.pushNamed(
                              //   'LogIn',
                              //   extra: <String, dynamic>{
                              //     kTransitionInfoKey: TransitionInfo(
                              //       hasTransition: true,
                              //       transitionType:
                              //           PageTransitionType.rightToLeft,
                              //       duration: Duration(milliseconds: 500),
                              //     ),
                              //   },
                              // );
                            },
                            child: Text(
                              'Login',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFBEF397),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
