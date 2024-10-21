import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOnRLNm9zdDXvXNotP99vtuhnfWrfymbE",
            authDomain: "moula-39974.firebaseapp.com",
            projectId: "moula-39974",
            storageBucket: "moula-39974.appspot.com",
            messagingSenderId: "959933298695",
            appId: "1:959933298695:web:6fede3368651c3e94052a2",
            measurementId: "G-KD97F2YQS4"));
  } else {
    await Firebase.initializeApp();
  }
}
