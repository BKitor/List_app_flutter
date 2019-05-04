import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

import './ItemTag.dart';
import './Item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Set<Item> masterItemSet;
  Set<ItemTag> masterItemTags;

  //TODO:Finish this json  bullshit
  MyApp(){
    String file = File('test.txt').readAsStringSync();
    Map fileAsJson = json.decode(file);

    masterItemSet = fileAsJson["Items"];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
