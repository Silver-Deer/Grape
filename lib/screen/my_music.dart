import 'package:flutter/material.dart';

class MyMusic extends StatefulWidget {
  const MyMusic({Key? key}) : super(key: key);

  @override
  _MyMusicState createState() => _MyMusicState();
}

class _MyMusicState extends State<MyMusic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("My Music"),
    );
  }
}
