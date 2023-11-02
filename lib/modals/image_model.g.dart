// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonPlaceHolder _$JsonPlaceHolderFromJson(Map<String, dynamic> json) =>
    JsonPlaceHolder(
      id: json['id'] as int,
      albumId: json['albumId'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$JsonPlaceHolderToJson(JsonPlaceHolder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'albumId': instance.albumId,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
