/*"albumId": 1,
"id": 1,
"title": "accusamus beatae ad facilis cum similique qui sunt",
"url": "https://via.placeholder.com/600/92c952",
"thumbnailUrl": "https://via.placeholder.com/150/92c952"*/
import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';
@JsonSerializable()
class JsonPlaceHolder{
  int id;
  int albumId;
  String title;
  String url;
  String thumbnailUrl;

  JsonPlaceHolder({
    required this.id,
    required this.albumId,
    required this.title,
    required this.url,
    required this.thumbnailUrl
  });

  factory JsonPlaceHolder.fromJson(Map<String, dynamic> json) => _$JsonPlaceHolderFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$JsonPlaceHolderToJson(this);
}