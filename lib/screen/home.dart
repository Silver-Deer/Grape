import 'package:flutter/material.dart';
import 'package:grape/widget/music_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _musicList = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: PageController(initialPage: 0),
              itemCount: 5,
              itemBuilder: (_, index) {
                return Image.network(
                  'https://picsum.photos/400/200',
                  fit: BoxFit.cover,
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: double.maxFinite,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Color(0xFF552EC5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 5),
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
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text('업데이트 일자 : 2021-08-31',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return MusicItem();
                        }),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
