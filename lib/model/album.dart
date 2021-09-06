import 'package:grape/model/artist.dart';
import 'package:grape/model/music.dart';

class Album {
  final String title;
  final Artist artist;
  final List<Music> musicList;
  final String date;
  final String info;
  final String coverImage;

  Album(this.title, this.artist, this.musicList, this.date, this.info,
      this.coverImage);

  Album.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        artist = json['artist'],
        musicList = json['musicList'],
        date = json['date'],
        info = json['info'],
        coverImage = json['coverImage'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'artist': artist,
        'musicList': musicList,
        'date': date,
        'info': info
      };
}
