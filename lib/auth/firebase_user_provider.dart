import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Moulai1FirebaseUser {
  Moulai1FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Moulai1FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Moulai1FirebaseUser> moulai1FirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Moulai1FirebaseUser>(
      (user) {
        currentUser = Moulai1FirebaseUser(user);
        return currentUser!;
      },
    );
