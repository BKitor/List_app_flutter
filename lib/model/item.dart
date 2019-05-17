import 'package:json_annotation/json_annotation.dart';
import './item_tag.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  final String name;
  final DateTime dateCreated;
  final String id;

  Item(this.name, this.dateCreated, this.id);

  factory Item.newItem(String name) {
    DateTime dateCreated = DateTime.now();
    return Item(name, dateCreated, name + dateCreated.toString());
  }

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  String toString() {
    return "Item: $name; $dateCreated";
  }
}
