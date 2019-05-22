import 'package:json_annotation/json_annotation.dart';
import 'package:list_app/model/item.dart';
import 'package:list_app/model/item_tag.dart';

part 'relation_str.g.dart';

@JsonSerializable()
class RelationStr {
  final String item;
  final String tag;

  RelationStr(this.item, this.tag);

  factory RelationStr.newRelationStr(Item i, ItemTag t){
    return RelationStr(i.id, t.id);
  }

  factory RelationStr.fromJson(Map<String, dynamic> json) =>
      _$RelationStrFromJson(json);

  Map<String, dynamic> toJson() => _$RelationStrToJson(this);
}
