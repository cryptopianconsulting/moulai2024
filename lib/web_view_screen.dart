import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({this.url, this.massage, Key? key}) : super(key: key);
  final url;
  final massage;

  @override
  WebViewScreenState createState() => WebViewScreenState();
}

class WebViewScreenState extends State<WebViewScreen> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: CircleAvatar(
              radius: 18,
              child: const Icon(
                Icons.done,
                size: 18,
                color: Colors.white,
              ),
              backgroundColor: Colors.green[400],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 1),
          child: Visibility(
            visible: _loading,
            child: const LinearProgressIndicator(
              minHeight: 1.5,
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ),
      body: WebView(
        initialUrl: widget.url ?? '',
        javascriptMode: JavascriptMode.unrestricted,
        gestureRecognizers: gestureRecognizers,
        onWebViewCreated: (controller) {
          // _myController = controller;
        },
        onPageStarted: (progress) {
          log(progress.toString());
        },
        onProgress: (progress) {
          log(progress.toString());
          if (progress == 100) {
            setState(() => _loading = false);
          } else {
            if (!_loading) {
              setState(() => _loading = true);
            }
          }
        },
        onPageFinished: (progress) {
          log("onPageFinished:------- " + progress.toString());
          print(progress.toString());
          if (progress.contains('result=success&paymentInitiationId') == true) {
            print('Success');
            Navigator.pop(context);
          }
          // Navigator.pop(context);
        },
      ),
    );
  }
}
