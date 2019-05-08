import 'package:json_annotation/json_annotation.dart';

import './item.dart';
part 'item_tag.g.dart';

@JsonSerializable()
class ItemTag {
  final DateTime created;
  final DateTime lastEdited;
  final String name;
  final Set<ItemTag> tags;
  final List<Item> items;

  ItemTag(this.created, this.lastEdited, this.name, this.tags, this.items);

  factory ItemTag.fromJson(Map<String, dynamic> json) =>
      _$ItemTagFromJson(json);

  Map<String, dynamic> toJson() => _$ItemTagToJson(this);

  @override
  String toString() {
    // TODO: implement toString
    return '$name : $created : $items';
  }
}
