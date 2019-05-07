import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

import './widgets/item.dart';
import './widgets/item_tag.dart';

class App extends StatelessWidget {
  final List<Item> masterItemSet = [];
  Set<ItemTag> masterItemTags = {};

  //TODO:Eventualy replace test.txt with a webserver
  App(){
    String incomingJsonStr = File('test.txt').readAsStringSync();
    var decodedJsonList = jsonDecode(incomingJsonStr);

    decodedJsonList.forEach((i)=>masterItemSet.add(Item.fromJson(i)));
    masterItemSet.forEach((i)=>masterItemTags.addAll(i.tags));
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
