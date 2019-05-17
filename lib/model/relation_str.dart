import 'package:json_annotation/json_annotation.dart';

part 'relation_str.g.dart';

@JsonSerializable()
class RelationStr {
  final String item;
  final String tag;

  RelationStr(this.item, this.tag);

  factory RelationStr.fromJson(Map<String, dynamic> json) =>
      _$RelationStrFromJson(json);

  Map<String, dynamic> toJson() => _$RelationStrToJson(this);
}
