import 'package:flutter/material.dart';

class MusicItem extends StatelessWidget {
  const MusicItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://picsum.photos/100/100",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Somone You Loved',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      'Lewis Calpadi',
                      style: TextStyle(color: Colors.white54, fontSize: 7),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
