import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/Services/FirebaseAuthService.dart';
import 'package:firebase_authentication/models/PostModel.dart';
import 'package:firebase_database/firebase_database.dart';

class DatabaseService {
  createPost(String userData) async {
    if (!FirebaseAuthservice().isLogin()) {
      throw new Exception('User not Logged In!');
    }

    User currentUser = FirebaseAuthservice().getUser();

    PostModel model = new PostModel();

    model.postContent = userData;
    model.userId = currentUser.uid;

    try {
      await FirebaseDatabase.instance
          .reference()
          .child('posts')
          .child(currentUser.uid)
          .set(model);
    } catch (e) {
      throw new Exception('Could not insert data into database!');
    }
  }
}
