import 'dart:math';

import 'package:flutter/material.dart';

class MusicSuggestionBanner extends StatelessWidget {
  final List<int> musicItem;
  const MusicSuggestionBanner({Key? key, required this.musicItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "좋아할만한 아티스트 MIX",
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "태연(TAEYEON), 백예린, DAY6",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "총 10곡 | 2021.02.18",
                        style: TextStyle(color: Colors.white54, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                      size: 40,
                    ))
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 10,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:
                                NetworkImage("https://picsum.photos/200/200"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 10,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:
                                NetworkImage("https://picsum.photos/200/200"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Container(
                  width: 280,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/200"),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
