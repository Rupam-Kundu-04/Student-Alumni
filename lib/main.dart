import 'package:firebase_core/firebase_core.dart';
//import 'package:student_project_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:student_project_app/screens/admin_login.dart';
import 'package:student_project_app/screens/home_screen.dart';
import 'package:student_project_app/screens/landing.dart';
//import 'package:student_project_app/screens/admin_login.dart';
import 'package:student_project_app/screens/login_preference.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBXa3G3uEhgXvXSavCFPMWtt0Dho1Ndivg",
        authDomain: "schoolproject-be305.firebaseapp.com",
        databaseURL: "https://schoolproject-be305-default-rtdb.firebaseio.com",
        projectId: "schoolproject-be305",
        storageBucket: "schoolproject-be305.appspot.com",
        messagingSenderId: "380250796544",
        appId: "1:380250796544:web:a9019bbaeae0af50861ee5"),
  );
  runApp(const MyApp()); //MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Students Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const Adminloginpage(), //landing() //loginpreference(), //HomeScreen(), //loginpreference() //Adminloginpage(), //HomeScreen(),
    );
  }
}
