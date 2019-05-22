import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:list_app/model/app_data.dart';
import 'package:list_app/model/item.dart';
import 'package:list_app/model/item_tag.dart';
import 'package:list_app/util/interal_file_io.dart';
import 'package:list_app/widgets/homepage.dart';

class App extends StatelessWidget {
  final AppData appData = AppData.appData;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List app",
      home: Homepage(),
    );
  }
}
