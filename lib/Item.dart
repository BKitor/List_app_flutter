import 'package:json_annotation/json_annotation.dart';
import './item_tag.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  final String name;
  final DateTime dateCreated;
  final Set<ItemTag> tags;

  Item(this.name, this.dateCreated, this.tags);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  String toString(){
    return "$name; $dateCreated; $tags";
  }
}
