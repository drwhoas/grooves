import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({Key? key}) : super(key: key);
  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

Future<Database> getConnToDatabase() async {
  final database = openDatabase(
    join(await getDatabasesPath(), 'grooves.db'),
    onCreate: (db, version) {
      return db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT, username TEXT, birthdate TEXT, password TEXT)'
      );
    },
    version: 1,
  );
  return database;
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  String email = "";
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
                children: const [
                  SizedBox(
                    width: 100,
                    height: 20,
                  )
                ],
              ),
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
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 100,
                    height: 20,
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      onChanged: (value){
                        setState(() {
                          email = value;
                        });
                      },
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.black26,
                        ),
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
                      obscureText: true,
                      onChanged: (value){
                        setState(() {
                          password = value;
                        });
                      },
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.password,
                          color: Colors.black26,
                        ),
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
                  const SizedBox(height: 40,),
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
                        List<Map> result = await database.rawQuery('SELECT * FROM users WHERE email=? AND password=?', [email, password]);
                        if (result.length == 1){
                          Navigator.pushNamedAndRemoveUntil(context, "/homepage", (route) => false);
                        }
                        // if ((email == "sakshi@gmail.com") && (password == "password")){
                        //   Navigator.pushNamed(context, "/homepage");
                        // }
                        // else{
                        //   Navigator.pushReplacementNamed(context, "/loginwithemail");
                        // }
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/phoneotp");
                    },
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't Have A Account?"),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, "/signup");
                      }, child: const Text("Sign Up")),
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
