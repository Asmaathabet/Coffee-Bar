import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // (_) means that this property has a private meaning and we can use it only in this file
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in [Anonymous]
  Future signInAnon() async {
    try {
      // AuthResult === UserCredential [Renamed]
      UserCredential result = await _auth.signInAnonymously();
      // ignore: deprecated_member_use
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  // sign in with email and password

  // register with email and password

  // logout

}
