// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
      json['name'] as String,
      json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      (json['tags'] as List)
          ?.map((e) =>
              e == null ? null : ItemTag.fromJson(e as Map<String, dynamic>))
          ?.toSet());
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'name': instance.name,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'tags': instance.tags?.toList()
    };
