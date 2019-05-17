import 'package:json_annotation/json_annotation.dart';

import './item.dart';
part 'item_tag.g.dart';

@JsonSerializable()
class ItemTag {
  final DateTime dateCreated;
  final DateTime dateLastEdited;
  final String name;
  final String id;

  ItemTag(this.dateCreated, this.dateLastEdited, this.name, this.id);

  factory ItemTag.newTag(String name){
    DateTime dateCreated = DateTime.now();
    return ItemTag(dateCreated, dateCreated, name, name+dateCreated.toString());
  }

  factory ItemTag.fromJson(Map<String, dynamic> json) =>
      _$ItemTagFromJson(json);

  Map<String, dynamic> toJson() => _$ItemTagToJson(this);

  @override
  String toString() {
    // TODO: implement toString
    return 'Tag: $name : $dateCreated ';
  }
}
