import 'dart:convert';

import 'package:list_app/model/item.dart';
import 'package:list_app/model/item_tag.dart';
import 'package:list_app/model/relation.dart';


class AppData{
  final Set<Item> masterItemSet = {};
  final Set<ItemTag> masterItemTagSet = {};
  final Map<ItemTag, List<Item>> masterRelationSet = {};

  AppData(String jsonStr){
    Map<String, dynamic> decodedJson = jsonDecode(jsonStr);
    decodedJson['items'].forEach((i)=>masterItemSet.add(Item.fromJson(i)));
    decodedJson['tags'].forEach((t)=>masterItemTagSet.add(ItemTag.fromJson(t)));
  }
}