import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';

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
}
