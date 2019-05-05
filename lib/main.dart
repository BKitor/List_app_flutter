import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

import 'item.dart';
import 'item_tag.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Set<Item> masterItemSet;
  Set<ItemTag> masterItemTags;

  //TODO:Finish this json  bullshit
  MyApp(){
    String file = File('test.txt').readAsStringSync();
    Map fileAsJson = jsonDecode(file);

    masterItemSet = fileAsJson["items"];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
