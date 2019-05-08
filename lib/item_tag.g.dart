// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemTag _$ItemTagFromJson(Map<String, dynamic> json) {
  return ItemTag(
      json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      json['lastEdited'] == null
          ? null
          : DateTime.parse(json['lastEdited'] as String),
      json['name'] as String,
      (json['tags'] as List)
          ?.map((e) =>
              e == null ? null : ItemTag.fromJson(e as Map<String, dynamic>))
          ?.toSet(),
      (json['items'] as List)
          ?.map((e) =>
              e == null ? null : Item.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ItemTagToJson(ItemTag instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'lastEdited': instance.lastEdited?.toIso8601String(),
      'name': instance.name,
      'tags': instance.tags?.toList(),
      'items': instance.items
    };
