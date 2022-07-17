import 'dart:async';
import 'package:grooves/user.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SignUpUsingEmail extends StatefulWidget {
  const SignUpUsingEmail({Key? key}) : super(key: key);
  @override
  State<SignUpUsingEmail> createState() => _SignUpUsingEmailState();
}

Future<Database> getConnToDatabase() async {
  final database = openDatabase(
      join(await getDatabasesPath(), 'grooves.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE users(email TEXT PRIMARY KEY, username TEXT, birthdate TEXT, password TEXT)'
        );
      },
    version: 1,
  );
  return database;
}

class _SignUpUsingEmailState extends State<SignUpUsingEmail> {
  String email = "";
  String username = "";
  String birthdate = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5efe3),
      body: SafeArea(
        child: ListView(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Grooves.png',
                        width: 300,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 300,
                        child: TextField(
                          onChanged: (data){
                            setState(() {
                              email = data;
                            });
                          },
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: "Email",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          onChanged: (data){
                            setState(() {
                              username = data;
                            });
                          },
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: "Username",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          onChanged: (data){
                            setState(() {
                              birthdate = data;
                            });
                          },
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: "Date Of Birth",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: true,
                          onChanged: (data){
                            setState(() {
                              password = data;
                            });
                          },
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: "Password",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      SizedBox(
                        height: 40,
                        width: 150,
                        child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: const BorderSide(color: Colors.black),
                                )
                            ),
                          ),
                          onPressed: () async {
                            final database = await getConnToDatabase();
                            User us = User(email: email, username: username, birthdate: birthdate, password: password);
                            await database.insert('users', us.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
                            database.close();
                            Navigator.pushNamedAndRemoveUntil(context, "/loginwithemail", (route) => false);
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already Have A Account?"),
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, "/loginwithemail");
                          }, child: const Text("Sign In")),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}
