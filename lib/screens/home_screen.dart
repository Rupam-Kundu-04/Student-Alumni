import 'package:flutter/material.dart';
//import 'package:student_project_app/firebase_options.dart';
import 'package:student_project_app/screens/insertstudentdata.dart';

//https://docs.flutter.dev/cookbook/navigation/navigation-basics
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  "Choose One",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RealTimeDatabase()),
                  );
                },
                child: Text("Add Student".toUpperCase()),
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

              //Space for retrive data button
              OutlinedButton(
                onPressed: () {
                  //Navigator.push(
                  //context//,
                  //MaterialPageRoute(
                  //  builder: (context) => const ),
                  //);
                },
                child: const Text(
                  "Retrive Data",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //Space for Register option
              ElevatedButton(
                onPressed: () {
                  //Navigator.push(
                  //  context,
                  //  MaterialPageRoute(
                  //      builder: (context) => const ),
                  //);
                },
                child: Text("Register user".toUpperCase()),
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
