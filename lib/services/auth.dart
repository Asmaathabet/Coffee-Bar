import 'package:coffee_bar/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class AuthService {
  // (_) means that this property has a private meaning and we can use it only in this file
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user Object based in Firebase user
  UserData _userFromFirebaseUser(User user) {
    return user != null ? UserData(uid: user.uid) : null;
  }

  // Streams - if change auth for users
  Stream<UserData> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  //sign in [Anonymous]
  Future signInAnon() async {
    try {
      // AuthResult === UserCredential [Renamed]
      UserCredential result = await _auth.signInAnonymously();
      // ignore: deprecated_member_use // instead of FirebaseUser => choose User
      User user = result.user;

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  // sign in with email and password

  // register with email and password

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      print('herrrrrrrrrrre');
      print(email);
      print(password);
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print(result);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } on PlatformException catch (e) {
      print(e.toString());
      return null;
    }
  }

  // logout
  Future logout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
