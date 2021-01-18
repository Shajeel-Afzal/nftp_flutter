import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthservice {
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e);
    }
  }

  bool isLogin() {
    User user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      return true;
    } else {
      return false;
    }
  }
}
