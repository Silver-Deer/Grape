import 'package:flutter/material.dart';

class MusicSuggestionBox extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  const MusicSuggestionBox(
      {Key? key, required this.child, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
            width: double.maxFinite,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: backgroundColor,
              child: child,
            )));
  }
}
