import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_app/model/app_data.dart';

import 'package:list_app/model/relation_str.dart';
import 'package:list_app/app.dart';
import 'package:list_app/model/item.dart';
import 'package:list_app/model/item_tag.dart';

void main() {
  test("Json Serialization of Item", () {
    Item testItem = Item.newItem("Item1");
    ItemTag testTag = ItemTag.newTag('Tag1');
    RelationStr testRelation = RelationStr(testItem.id, testTag.id);

    Map<String, dynamic> testmap = {
      'items': [testItem],
      'tags': [testTag],
      'relations': [testRelation]
    };

    String testStr = jsonEncode(testmap);

    File f = File('./test/test.json');
    f.writeAsStringSync(testStr);

    print(testStr);

  });

  // test("Init app_data",(){
  //   AppData appData = AppData(File('./test/test2.json').readAsStringSync());

  //   print(appData.masterItemSet);
  //   print(appData.masterItemTagSet);
  //   print(appData.masterRelationMap);
    
  //   expect('', '');
  // });


}
