import 'package:grape/model/artist.dart';

class Music {
  final int idx;
  final String title;
  final Artist artist;
  final String coverImage;

  Music(this.idx, this.title, this.artist, this.coverImage);

  Music.fromJson(Map<String, dynamic> json)
      : idx = json['idx'],
        title = json['title'],
        artist = json['artist'],
        coverImage = json['coverImage'];

  Map<String, dynamic> toJson() =>
      {'idx': idx, 'title': title, 'artist': artist, 'coverImage': coverImage};
}
