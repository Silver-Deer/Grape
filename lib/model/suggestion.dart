import 'package:grape/model/music.dart';

class Suggestion {
  final String title;
  final String date;
  final List<Music> musicList;

  Suggestion(this.title, this.date, this.musicList);

  Suggestion.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        date = json['date'],
        musicList = json['musicList'];

  Map<String, dynamic> toJson() =>
      {'title': title, 'date': date, 'musicList': musicList};
}
