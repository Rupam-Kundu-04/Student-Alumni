import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class RealTimeDatabase extends StatefulWidget {
  const RealTimeDatabase({super.key});

  @override
  State<RealTimeDatabase> createState() => _RealTimeDatabaseState();
}

class _RealTimeDatabaseState extends State<RealTimeDatabase> {
  var nameController = new TextEditingController();
  var class1Controller = new TextEditingController();
  var rollController = new TextEditingController();

  final databaseRef = FirebaseDatabase.instance.ref("student");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Admission Portal".toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Text(
              //   "Student Data".toUpperCase(),
              //   style: TextStyle(fontSize: 28, color: Colors.green),
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.green,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: class1Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Class',
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.bookmark_add_rounded,
                      color: Colors.green,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: rollController,
                decoration: const InputDecoration(
                    labelText: 'Roll',
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.verified_user_outlined,
                      color: Colors.green,
                    )),
              ),
              const SizedBox(
                height: 25, //50,
              ),
              //OutlinedButton
              ElevatedButton(
                  onPressed: () {
                    if (nameController.text.isNotEmpty &&
                        class1Controller.text.isNotEmpty) {
                      insertData(nameController.text, class1Controller.text,
                          rollController.text);
                      Navigator.pop(context);
                    }
                  },
                  child: Text("Add".toUpperCase()),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 18),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      elevation: 6,
                      side: const BorderSide(color: Colors.white, width: 1.0),
                      shape: const StadiumBorder()
                      //shadowColor: Colors.yellow
                      )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (nameController.text.isNotEmpty ||
                        class1Controller.text.isNotEmpty ||
                        rollController.text.isNotEmpty) {
                      nameController.clear();
                      class1Controller.clear();
                      rollController.clear();
                    }
                  },
                  child: Text("Clear".toUpperCase()),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 18),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      elevation: 6,
                      side: const BorderSide(color: Colors.yellow, width: 1.0),
                      shape: const StadiumBorder())),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Go Back".toUpperCase(),
                    style: const TextStyle(fontSize: 18, color: Colors.blue),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void insertData(String name, String class1, String roll) {
    //String key = databaseRef.child("Users").child("ListRegisters").push().key;
    databaseRef.child("path").push().set({
      'name': name,
      'class': class1,
      'roll': roll,
    });
    nameController.clear();
    class1Controller.clear();
    rollController.clear();
  }
}
