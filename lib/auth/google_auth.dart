import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_util.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final _googleSignIn = GoogleSignIn();

Future<User?> signInWithGoogle(BuildContext context) async {
  try {
    if (kIsWeb) {
      // For web platform, use signInWithPopup instead of native sign-in
      final userCredential =
          await FirebaseAuth.instance.signInWithPopup(GoogleAuthProvider());

      // Once signed in, return the UserCredential
      return userCredential.user;
    }

    // For other platforms (iOS and Android), sign out if already signed in with Google
    await signOutWithGoogle();

    print('signOutWithGoogle done!!!');
    // Prompt the user to select a Google account to sign in
    final googleSignInAccount = await _googleSignIn.signIn();
    if (googleSignInAccount == null) {
      // User canceled sign-in or no account selected
      return null;
    }
    print('googleSignInAccount done!!!');
    // Get the authentication credentials
    final googleSignInAuthentication = await googleSignInAccount.authentication;
    final credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    print('GoogleAuthProvider done!!!');
    // Sign in with Firebase using the Google authentication credentials
    final userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    print('userCredential done!!!');
    // Once signed in, return the UserCredential
    return userCredential.user;
  } catch (e) {
    // Handle any errors that might occur during the sign-in process
    print('Error signing in with Google: $e');
    return null;
  }
}

Future<void> signOutWithGoogle() async {
  await _googleSignIn.signOut();
}

final _googleSignIn2 = GoogleSignIn();

Future<User?> signInWithGoogle2(BuildContext context) async {
  final signInFunc = () async {
    if (kIsWeb) {
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithPopup(GoogleAuthProvider());
    }
    print('catchError===========');
    await signOutWithGoogle();
    print('signInWithGoogle===========');
    final auth = await (await _googleSignIn2.signIn())?.authentication;
    if (auth == null) {
      return null;
    }
    final credential = GoogleAuthProvider.credential(
        idToken: auth.idToken, accessToken: auth.accessToken);

    print('credential===========');
    return FirebaseAuth.instance.signInWithCredential(credential);
  };
  return signInOrCreateAccount(context, signInFunc, 'GOOGLE');
}

Future signOutWithGoogle2() => _googleSignIn.signOut();
