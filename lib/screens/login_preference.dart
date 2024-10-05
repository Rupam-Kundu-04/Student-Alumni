//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_project_app/screens/admin_login.dart';
//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//import 'package:student_project_app/firebase_options.dart';
//import 'package:student_project_app/screens/insertstudentdata.dart';

//https://docs.flutter.dev/cookbook/navigation/navigation-basics
class loginpreference extends StatefulWidget {
  const loginpreference({Key? key}) : super(key: key);
  @override
  State<loginpreference> createState() => _loginpreferenceState();
}

class _loginpreferenceState extends State<loginpreference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ABC HIGH SCHOOL".toUpperCase()),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Log In As",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              //This is for Employe
              ElevatedButton(
                onPressed: () {
                  //Navigator.push(
                  //  context,
                  //  MaterialPageRoute(
                  //      builder: (context) => const RealTimeDatabase()),
                  //);
                },
                child: Text("Visitor".toUpperCase()),
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    elevation: 6,
                    side: const BorderSide(color: Colors.yellow, width: 1.0),
                    shape: const StadiumBorder()),
              ),
              const SizedBox(
                height: 25,
              ),

              //This is for Admin
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Adminloginpage()),
                  );
                },
                child: Text("Employee".toUpperCase()),
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    elevation: 6,
                    side: const BorderSide(color: Colors.yellow, width: 1.0),
                    shape: const StadiumBorder()),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ));
  }
}
