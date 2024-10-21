import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../models/Linkedaccounts.dart';

class CreditCardPage extends StatelessWidget {
  CreditCardPage({required this.item, Key? key}) : super(key: key);
  final Datum item;
  var formattedDate = DateFormat('EEEE, MMM d, yyyy');
  var formattedDatee = DateFormat('EEEE, MMM d, yyyy');

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Account details',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 23),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 18, 56, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   width: 24,
                      //   height: 24,
                      //   child: Image.asset('assets/images/img.png'),
                      // ),
                      const SizedBox(
                        width: 10,
                      ),
                      // const Text(
                      //   'AMERICAN EXPRE..',
                      //   style: TextStyle(
                      //       fontSize: 13, fontWeight: FontWeight.w600),
                      // )
                    ],
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.fromLTRB(13, 16, 56, 0),
                //   child: Text('American Express credit card account'),
                // ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 0, 147, 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                ' * *  *  *  *  *  * ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13,
                                    color: Colors.grey),
                              ),
                              Text(
                                  item.accountNo!.substring(
                                      item.accountNo!.length - 4,
                                      item.accountNo!.length),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.grey))
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
          SizedBox(
            height: 0.0165 * screenHeight,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              color: Colors.grey[700],
              height: 1.0,
              thickness: 2.0,
            ),
          ),
          const Text(
            'This account is used for?',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 16, right: 16),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       border: Border.all(color: Colors.white10),
          //       borderRadius: BorderRadius.circular(10),
          //       color: Colors.grey[900],
          //     ),
          //     child: TextFormField(
          //       style: const TextStyle(color: Colors.white54),
          //       decoration: InputDecoration(
          //         contentPadding: EdgeInsets.symmetric(
          //           vertical: 20,
          //         ),
          //         hintText: 'Business & Personal',
          //         hintStyle: const TextStyle(
          //             color: Colors.white54,
          //             fontSize: 16,
          //             fontWeight: FontWeight.w400),
          //         prefixIcon:
          //             const Icon(Icons.business_center, color: Colors.white54),
          //         suffixIcon: Row(
          //           mainAxisSize: MainAxisSize.min,
          //           children: [
          //             const SizedBox(width: 5),
          //             IconButton(
          //               onPressed: () {},
          //               icon: const Icon(Icons.edit, color: Colors.white54),
          //             ),
          //           ],
          //         ),
          //         border: InputBorder.none,
          //       ),
          //     ),
          //   ),
          // ),
          // const SizedBox(
          //   height: 17.5,
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 16, right: 16),
          //   child: Divider(
          //     color: Colors.grey[700],
          //     height: 1.0,
          //     thickness: 2.0,
          //   ),
          // ),
          // const SizedBox(
          //   height: 17.5,
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 221, 11),
            child: Text(
              'Account information',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 16),
            child: Card(
              color: Colors.grey[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28, 21, 115, 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Account type',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white54),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          ': ${item.type}',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Divider(
                      color: Colors.white54,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28, 12, 10, 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Last updated',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white54),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          ':  ${formattedDatee.format(DateTime.parse(item.lastUpdated.toString()))}',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Divider(
                      color: Colors.white54,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(29, 13, 142, 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Balance:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white54),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Row(
                              children: [
                                Text(
                                  '${(item.availableFunds ?? 0).toString()} ',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w300,
                                        lineHeight: 1.2,
                                      ),
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  item.currency.toString(),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w300,
                                        lineHeight: 1.2,
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
          SizedBox(
            height: 18.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              color: Colors.grey[700],
              height: .50,
              thickness: 2.0,
            ),
          ),
          // GestureDetector(
          //   onTap: () {},
          //   child: Container(
          //     height: 65,
          //     child: Padding(
          //       padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           const Text(
          //             'Reset expenses',
          //             style: TextStyle(
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w400,
          //                 color: Colors.white54),
          //           ),
          //           Spacer(),
          //           IconButton(
          //               onPressed: () {},
          //               icon: const Icon(
          //                 Icons.arrow_forward_ios_sharp,
          //                 color: Colors.white,
          //               )),
          //           SizedBox(
          //             width: 15,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 16, right: 16),
          //   child: Divider(
          //     color: Colors.grey[700],
          //     height: 1.0,
          //     thickness: 2.0,
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {},
          //   child: Container(
          //     height: 65,
          //     child: Padding(
          //       padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
          //       child: Row(
          //         children: [
          //           const Text(
          //             'Unlink account',
          //             style: TextStyle(
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w400,
          //                 color: Colors.white54),
          //           ),
          //           Spacer(),
          //           IconButton(
          //               onPressed: () {},
          //               icon: const Icon(
          //                 Icons.arrow_forward_ios_sharp,
          //                 color: Colors.white,
          //               )),
          //           SizedBox(
          //             width: 15,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 16, right: 16),
          //   child: Divider(
          //     color: Colors.grey[700],
          //     height: 1.0,
          //     thickness: 2.0,
          //   ),
          // ),
        ]),
       );
  }
}
