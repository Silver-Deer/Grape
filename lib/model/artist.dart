import 'dart:ffi';

class Artist {
  final int idx;
  final String name;
  final String profileImage;

  Artist(this.idx, this.name, this.profileImage);

  Artist.fromJson(Map<String, dynamic> json)
      : idx = json['idx'],
        name = json['name'],
        profileImage = json['profileImage'];

  Map<String, dynamic> toJson() =>
      {'idx': idx, 'name': name, 'profileImage': profileImage};
}
