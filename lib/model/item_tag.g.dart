// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemTag _$ItemTagFromJson(Map<String, dynamic> json) {
  return ItemTag(
      json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      json['dateLastEdited'] == null
          ? null
          : DateTime.parse(json['dateLastEdited'] as String),
      json['name'] as String,
      json['id'] as String);
}

Map<String, dynamic> _$ItemTagToJson(ItemTag instance) => <String, dynamic>{
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'dateLastEdited': instance.dateLastEdited?.toIso8601String(),
      'name': instance.name,
      'id': instance.id
    };
