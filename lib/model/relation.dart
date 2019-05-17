import 'package:json_annotation/json_annotation.dart';


import 'package:list_app/model/item.dart';
import 'package:list_app/model/item_tag.dart';

part 'relation.g.dart';

@JsonSerializable()
class Relation {
  final Item item;
  final ItemTag tag;

  Relation(this.item, this.tag);

  factory Relation.fromJson(Map<String, dynamic> json) => _$RelationFromJson(json);

  Map<String, dynamic> toJson() => _$RelationToJson(this);

  

  @override
  String toString() {
    // TODO: implement toString
    return 'Tulple: <${this.item} : ${this.tag}>';
  }
}
