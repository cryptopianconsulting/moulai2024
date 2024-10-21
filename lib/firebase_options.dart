// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB2EwZo3nXOv-ftEeHeIZuEpr56NyHNlk8',
    appId: '1:188039330210:web:984ec9ab6b3889dcacdafb',
    messagingSenderId: '188039330210',
    projectId: 'moulai2024-dd01c',
    authDomain: 'moulai2024-dd01c.firebaseapp.com',
    storageBucket: 'moulai2024-dd01c.appspot.com',
    measurementId: 'G-ZJF3B3LCGQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClSN8cbw5_0llnGt4vxNg8eN8DNntmOIE',
    appId: '1:188039330210:android:e8934f59660ef0a9acdafb',
    messagingSenderId: '188039330210',
    projectId: 'moulai2024-dd01c',
    storageBucket: 'moulai2024-dd01c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBo5NWTRXrjGz9x5UTzd5juHghYq6XpMXc',
    appId: '1:188039330210:ios:d836d01d5f82c529acdafb',
    messagingSenderId: '188039330210',
    projectId: 'moulai2024-dd01c',
    storageBucket: 'moulai2024-dd01c.appspot.com',
    iosBundleId: 'com.mycompany.moula',
  );
}
