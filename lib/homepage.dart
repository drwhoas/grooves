import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grooves/phoneOTP.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5efe3),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(height: 30,),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "Welcome.",
                    style: TextStyle(
                      color: Color(0xff8a8169),
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 150,),
                IconButton(
                    onPressed: (){},
                    icon: Image.asset(
                      'assets/Group 59.png',
                      width: 40,
                      height: 40,
                      color: const Color(0xff8a8169),
                    ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Image.asset(
                    'assets/menu.png',
                    width: 40,
                    height: 40,
                    color: const Color(0xff8a8169),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Container(
              color: const Color(0xff8a8169),
              height: 2,
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset(
                        'assets/Group 60.png',
                        width: 40,
                        height: 40,
                        color: const Color(0xff8a8169),
                      ),
                    ),
                    const Text(
                      "Library",
                      style: TextStyle(
                        color: Color(0xff8a8169),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset(
                        'assets/home.png',
                        width: 40,
                        height: 40,
                        color: const Color(0xff8a8169),
                      ),
                    ),
                    const Text(
                        "Home",
                      style: TextStyle(
                        color: Color(0xff8a8169),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset(
                        'assets/search.png',
                        width: 40,
                        height: 40,
                        color: const Color(0xff8a8169),
                      ),
                    ),
                    const Text(
                      "Search",
                      style: TextStyle(
                        color: Color(0xff8a8169),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset(
                        'assets/premium.png',
                        width: 40,
                        height: 40,
                        color: const Color(0xff8a8169),
                      ),
                    ),
                    const Text(
                      "Premium",
                      style: TextStyle(
                        color: Color(0xff8a8169),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                "Made For You.",
                style: TextStyle(
                  color: Color(0xff8a8169),
                  fontSize: 27,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Image.asset(
                      'assets/Play1.png'
                    ),
                    Image.asset(
                        'assets/Play2.png'
                    ),
                    Image.asset(
                        'assets/Play3.png'
                    ),
                    Image.asset(
                        'assets/Play4.png'
                    ),
                    Image.asset(
                        'assets/Play1.png'
                    ),
                    Image.asset(
                        'assets/Play2.png'
                    ),
                    Image.asset(
                        'assets/Play4.png'
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                "Best Of Artists.",
                style: TextStyle(
                  color: Color(0xff8a8169),
                  fontSize: 27,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Image.asset(
                        'assets/Play2.png'
                    ),
                    Image.asset(
                        'assets/Play1.png'
                    ),
                    Image.asset(
                        'assets/Play4.png'
                    ),
                    Image.asset(
                        'assets/Play3.png'
                    ),
                    Image.asset(
                        'assets/Play1.png'
                    ),
                    Image.asset(
                        'assets/Play2.png'
                    ),
                    Image.asset(
                        'assets/Play4.png'
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                "Recently Played.",
                style: TextStyle(
                  color: Color(0xff8a8169),
                  fontSize: 27,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Image.asset(
                        'assets/Play3.png'
                    ),
                    Image.asset(
                        'assets/Play1.png'
                    ),
                    Image.asset(
                        'assets/Play2.png'
                    ),
                    Image.asset(
                        'assets/Play1.png'
                    ),
                    Image.asset(
                        'assets/Play4.png'
                    ),
                    Image.asset(
                        'assets/Play1.png'
                    ),
                    Image.asset(
                        'assets/Play2.png'
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: const Text(
                "Recommended For Today.",
                style: TextStyle(
                  color: Color(0xff8a8169),
                  fontSize: 27,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Image.asset(
                        'assets/Play1.png'
                    ),
                    Image.asset(
                        'assets/Play3.png'
                    ),
                    Image.asset(
                        'assets/Play4.png'
                    ),
                    Image.asset(
                        'assets/Play2.png'
                    ),
                    Image.asset(
                        'assets/Play3.png'
                    ),
                    Image.asset(
                        'assets/Play4.png'
                    ),
                    Image.asset(
                        'assets/Play2.png'
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
