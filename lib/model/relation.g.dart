// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Relation _$RelationFromJson(Map<String, dynamic> json) {
  return Relation(
      json['item'] == null
          ? null
          : Item.fromJson(json['item'] as Map<String, dynamic>),
      json['tag'] == null
          ? null
          : ItemTag.fromJson(json['tag'] as Map<String, dynamic>));
}

Map<String, dynamic> _$RelationToJson(Relation instance) =>
    <String, dynamic>{'item': instance.item, 'tag': instance.tag};
