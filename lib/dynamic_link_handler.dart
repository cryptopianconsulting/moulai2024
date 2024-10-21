import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:moulai1/linked_accounts/linked_accounts_widget.dart';
import 'package:moulai1/main.dart';

class DynamicLinkHandler {
  static FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

  static Future<void> initDynamicLinks() async {
    dynamicLinks.onLink.listen((dynamicLinkData) {
      // Listen and retrieve dynamic links here
      final String deepLink = dynamicLinkData.link.toString(); // Get DEEP LINK
      // Ex: https://moulai.page.link/linkedAccounts
      final String path = dynamicLinkData.link.path; // Get PATH
      // Ex: linkedAccounts
      if (deepLink.isEmpty) return;
      handleDeepLink(path);
    }).onError((error) {
      print('onLink error');
      print(error.message);
    });
    initUniLinks();
  }

  static Future<void> initUniLinks() async {
    try {
      final initialLink = await dynamicLinks.getInitialLink();
      if (initialLink == null) return;
      handleDeepLink(initialLink.link.path);
    } catch (e) {
      // Error
    }
  }

  static void handleDeepLink(String path) {
    if (path == 'linkedAccounts') {
      Navigator.push(
        navigatorKey.currentContext!,
        MaterialPageRoute(
          builder: (_) => LinkedAccountsWidget(),
        ),
      );
    }
  }
}
