import 'package:json_annotation/json_annotation.dart';

import './item.dart';
part 'item_tag.g.dart';

@JsonSerializable()
class ItemTag {
  DateTime created;
  DateTime lastEdited;
  String name;
  Set<ItemTag> tags;
  List<Item> items;

  ItemTag(this.created, this.lastEdited, this.name, this.tags, this.items);

  Map<String, dynamic> toJson() => _$ItemTagToJson(this);

  factory ItemTag.fromJson(Map<String, dynamic> json) =>
      _$ItemTagFromJson(json);
}
