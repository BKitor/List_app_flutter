import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:list_app/model/item.dart';
import 'package:list_app/model/item_tag.dart';
import 'package:list_app/model/relation_str.dart';

main(){
  
  test('Create json file for testing', (){
    List<Item> li = [];
    List<ItemTag> lt = [];
    List<RelationStr> lr = [];
    for(int i = 0; i<3; i++){
      li.add(Item.newItem("Item number $i"));
      lt.add(ItemTag.newTag('Tag number $i'));
    }
    
    li.forEach((i)=>lr.add(RelationStr.newRelationStr(i, lt[0])));
    lr.add(RelationStr.newRelationStr(li[0], lt[1]));
    lr.add(RelationStr.newRelationStr(li[2], lt[1]));

    Map<String, List<dynamic>> deserialisedJson = {
      'items':li,
      'tags':lt,
      'relations':lr
    };

    String serializedJson = jsonEncode(deserialisedJson);

    File('./test/test2.json').writeAsStringSync(serializedJson);

    expect('','');

  });
}