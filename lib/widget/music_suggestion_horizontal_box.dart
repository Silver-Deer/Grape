import 'package:flutter/material.dart';

class MusicSuggestionHorizontalBox extends StatelessWidget {
  final Widget title;
  final List<Widget> itemList;
  const MusicSuggestionHorizontalBox(
      {Key? key, required this.title, required this.itemList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              title,
              SizedBox(height: 10),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: itemList,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
