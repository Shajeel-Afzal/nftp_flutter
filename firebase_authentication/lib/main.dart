import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/splash_screen.dart';
import 'package:firebase_authentication/timeline_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                child: Text("ToDo"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Welcome to my App!"),
              TextField(
                controller: emailTextEditingController,
              ),
              TextField(
                controller: passwordTextEditingController,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      String email = emailTextEditingController.text;
                      String password = passwordTextEditingController.text;

                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .signInWithEmailAndPassword(
                                email: email, password: password);

                        if (userCredential.user != null) {
                          print("User Logged in successfully");

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return TimeLineScreen();
                              },
                            ),
                          );
                        } else {
                          print("User could not login!");
                        }

                        print(userCredential);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        } else {
                          print('Something went wrong while doing login!');
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Text("Login"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                    onPressed: () async {
                      String email = emailTextEditingController.text;
                      String password = passwordTextEditingController.text;

                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password);

                        if (userCredential.user != null) {
                          print("User Logged in successfully");

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return TimeLineScreen();
                              },
                            ),
                          );
                        } else {
                          print("User could not login!");
                        }

                        print(userCredential);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        } else {
                          print('Something went wrong while doing login!');
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Text("Signup"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
