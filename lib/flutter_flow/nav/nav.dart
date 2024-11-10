import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moulai1/loader.dart';
import 'package:moulai1/standard_plan/basic_plan_widget.dart';
import 'package:moulai1/standard_plan/premium_plan_widget.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  Moulai1FirebaseUser? initialUser;
  Moulai1FirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;

  bool get loggedIn => user?.loggedIn ?? false;

  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;

  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;

  bool hasRedirect() => _redirectLocation != null;

  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;

  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(Moulai1FirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // notifyListeners();
    // Refresh the app on auth change unless explicitly marked otherwise.
    // if (notifyOnAuthChange) {
    //   notifyListeners();
    // }
    // // Once again mark the notifier as needing to update on auth change
    // // (in order to catch sign in / out events).
    // updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      // errorBuilder: (context, _) =>
      //     //  appStateNotifier.loggedIn
      //     //     ? WelcomeDeductionPageWidget()
      //     //     :
      //     HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              //  appStateNotifier.loggedIn
              //     ? WelcomeDeductionPageWidget()
              //     :
              HomePageWidget(),
          //     StartPageWidget
//  SharedPreferences prefs = await SharedPreferences.getInstance();
//     apiToken = prefs.getString("token")!;
//DashboardWidget
          //     LogInWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'StartPage',
          path: '/startPage',
          builder: (context, params) => StartPageWidget(),
        ),
        FFRoute(
          name: 'LogIn',
          path: '/logIn',
          builder: (context, params) => LogInWidget(),
        ),
        FFRoute(
          name: 'SignInVerification',
          path: '/signInVerification',
          builder: (context, params) => SignInVerificationWidget(
            isFromRegister: false,
          ),
        ),
        FFRoute(
          name: 'WelcomeBackPage',
          path: '/welcomeBackPage',
          builder: (context, params) => WelcomeBackPageWidget(),
        ),
        FFRoute(
          name: 'NoAccount',
          path: '/noAccount',
          builder: (context, params) => NoAccountWidget(),
        ),
        FFRoute(
          name: 'SelectWorkKind',
          path: '/selectWorkKind',
          builder: (context, params) => SelectWorkKindWidget(),
        ),
        FFRoute(
          name: 'SelectPersonalDeduction',
          path: '/selectPersonalDeduction',
          builder: (context, params) => SelectPersonalDeductionWidget(),
        ),
        FFRoute(
          name: 'SelectWorkFor',
          path: '/selectWorkFor',
          builder: (context, params) => SelectWorkForWidget(),
        ),
        FFRoute(
          name: 'SelectAnualIncome',
          path: '/selectAnualIncome',
          builder: (context, params) => SelectAnualIncomeWidget(),
        ),
        FFRoute(
          name: 'WelcomeDeductionPage',
          path: '/welcomeDeductionPage',
          builder: (context, params) => WelcomeDeductionPageWidget(),
        ),
        FFRoute(
          name: 'SignUp',
          path: '/signUp',
          builder: (context, params) => SignUpWidget(),
        ),
        FFRoute(
          name: 'SignUpWithEmail',
          path: '/signUpWithEmail',
          builder: (context, params) => SignUpWithEmailWidget(),
        ),
        FFRoute(
          name: 'ConfirmLegalName',
          path: '/confirmLegalName',
          builder: (context, params) => ConfirmLegalNameWidget(),
        ),
        FFRoute(
          name: 'ConnectBank',
          path: '/connectBank',
          builder: (context, params) => ConnectBankWidget(),
        ),
        FFRoute(
          name: 'PrivacyPolicy',
          path: '/privacyPolicy',
          builder: (context, params) => PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: 'TermsofService',
          path: '/termsofService',
          builder: (context, params) => TermsofServiceWidget(),
        ),
        FFRoute(
          name: 'AccountLinked',
          path: '/accountLinked',
          builder: (context, params) => AccountLinkedWidget(),
        ),
        FFRoute(
          name: 'FetchingProgress',
          path: '/fetchingProgress',
          builder: (context, params) => FetchingProgressWidget(),
        ),
        FFRoute(
          name: 'ExpenseAnalysis',
          path: '/expenseAnalysis',
          builder: (context, params) => ExpenseAnalysisWidget(),
        ),
        FFRoute(
          name: 'FindTotalDeductions',
          path: '/findTotalDeductions',
          builder: (context, params) => FindTotalDeductionsWidget(),
        ),
        FFRoute(
          name: 'AccountPlan',
          path: '/accountPlan',
          builder: (context, params) => AccountPlanWidget(),
        ),
        FFRoute(
          name: 'StandardPlan',
          path: '/standardPlan',
          builder: (context, params) => StandardPlanWidget(),
        ),
        FFRoute(
          name: 'BasicPlan',
          path: '/basicPlan',
          builder: (context, params) => BasicPlanWidget(),
        ),
        FFRoute(
          name: 'PremiumPlan',
          path: '/premiumPlan',
          builder: (context, params) => PremiumPlanWidget(),
        ),
        FFRoute(
          name: 'Dashboard',
          path: '/dashboard',
          builder: (context, params) => DashboardWidget(),
        ),
        FFRoute(
          name: 'Summary',
          path: '/summary',
          builder: (context, params) => SummaryWidget(),
        ),
        FFRoute(
          name: 'ReviewedPage',
          path: '/reviewedPage',
          builder: (context, params) => ReviewedPageWidget(),
        ),
        FFRoute(
          name: 'ReviewedList',
          path: '/reviewedList',
          builder: (context, params) => ReviewedListWidget(),
        ),
        FFRoute(
          name: 'MoreInfor',
          path: '/moreInfor',
          builder: (context, params) => MoreInforWidget(
            item: null,
          ),
        ),
        FFRoute(
          name: 'AllExpenses',
          path: '/allExpenses',
          builder: (context, params) => AllExpensesWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: 'AccountDetail',
          path: '/accountDetail',
          builder: (context, params) => AccountDetailWidget(),
        ),
        FFRoute(
          name: 'LinkedAccounts',
          path: '/linkedAccounts',
          builder: (context, params) => LinkedAccountsWidget(),
        ),
        FFRoute(
          name: 'AskQuestion',
          path: '/askQuestion',
          builder: (context, params) => AskQuestionWidget(),
        ),
        FFRoute(
          name: 'SendEmail',
          path: '/sendEmail',
          builder: (context, params) => SendEmailWidget(),
        ),
        FFRoute(
          name: 'SendEmailAccount',
          path: '/sendEmailAccount',
          builder: (context, params) => SendEmailAccountWidget(),
        ),
        FFRoute(
          name: 'LaterPage',
          path: '/laterPage',
          builder: (context, params) => LaterPageWidget(),
        ),
        FFRoute(
          name: 'ApiAgreement',
          path: '/apiAgreement',
          builder: (context, params) => ApiAgreementWidget(),
        ),
        FFRoute(
          name: 'ApiLogin',
          path: '/apiLogin',
          builder: (context, params) => ApiLoginWidget(),
        ),
        FFRoute(
          name: 'ApiAccount',
          path: '/apiAccount',
          builder: (context, params) => ApiAccountWidget(),
        ),
        FFRoute(
          name: 'ApiAccountSuccess',
          path: '/apiAccountSuccess',
          builder: (context, params) => ApiAccountSuccessWidget(),
        ),
        FFRoute(
          name: 'WelcomeEmailConfirmed',
          path: '/welcomeEmailConfirmed',
          builder: (context, params) => WelcomeEmailConfirmedWidget(),
        ),
        FFRoute(
          name: 'BankLinkConsent',
          path: '/bankLinkConsent',
          builder: (context, params) => BankLinkConsentWidget(),
        ),
        FFRoute(
          name: 'FetchBankAccounts',
          path: '/fetchBankAccounts',
          builder: (context, params) => FetchBankAccountsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      // urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: params,
              queryParameters: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: params,
              queryParameters: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.currentConfiguration.matches.length <=
        1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  // Access AppStateNotifier directly if it's stored elsewhere
  AppStateNotifier get appState => AppStateNotifier();

  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);

  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();

  void clearRedirectLocation() => appState.clearRedirectLocation();

  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};

  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    // ..addAll()
    ..addAll(extraMap);

  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));

  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;

  bool get hasFutures => state.allParams.entries.any(isAsyncParam);

  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.matchedLocation);
            return '/homePage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
