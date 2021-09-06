import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grape/widget/music_group_item.dart';
import 'package:grape/widget/music_item.dart';
import 'package:grape/widget/music_seggestion_banner.dart';
import 'package:grape/widget/music_suggestion_box.dart';
import 'package:grape/widget/music_suggestion_horizontal_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> _musicList = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 350,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: PageController(initialPage: 0),
            itemCount: 3,
            itemBuilder: (_, index) {
              return MusicSuggestionBanner(musicItem: [1, 2, 3, 4]);
            },
          ),
        ),
        MusicSuggestionHorizontalBox(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "최신 노래",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text("국내",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600)),
                  Text(
                    " | ",
                    style: TextStyle(color: Colors.black26, fontSize: 20),
                  ),
                  Text("해외",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ],
          ),
          itemList: _musicList.map((int index) {
            return MusicGroupItem();
          }).toList(),
        ),
        MusicSuggestionBox(
          backgroundColor: Color(0xFF552EC5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15, 20, 10, 5),
                child: Text(
                  "가을 아침에 듣는 JAZZ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 10, 10),
                child: Text('업데이트 일자 : 2021-08-31',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return MusicItem(
                        onClick: () => {debugPrint("ON CLIKED!")},
                      );
                    }),
              )
            ],
          ),
        ),
      ],
    );
  }
}
