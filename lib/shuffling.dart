import 'package:flutter/material.dart';

class Shuffle extends StatefulWidget {
  const Shuffle({Key? key}) : super(key: key);
  @override
  State<Shuffle> createState() => _ShuffleState();
}

class _ShuffleState extends State<Shuffle> {
  List<String> songs = [
    "Hold On",
    "Levitating",
    "Dynamite",
    "Alone, Pt II",
    "Beautiful Mistakes",
    "Arcade",
    "Take you Dancing",
    "2002",
    "Anyone",
    "Willow",
    "Dusk Till Dawn",
    "Peaches",
    "Savage Love",
    "Before You Go",
    "Without You",
    "Him & I",
    "Intentions",
    "Heartbreak Anniversary",
    "Let Me Down Slowly",
    "Deja Vu"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            songs.shuffle();
          });
        },
        tooltip: 'Shuffle',
        child: const Icon(Icons.shuffle),
      ),
      backgroundColor: const Color(0xfff5efe3),
      body: SafeArea(
        child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (context, index) {
            return Container(
              // decoration: const BoxDecoration(
              //   border: Border(
              //       bottom: BorderSide()
              //   ),
              // ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    songs[index],
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
