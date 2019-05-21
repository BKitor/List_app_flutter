import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:list_app/model/app_data.dart';
import 'package:list_app/model/relation.dart';
import 'package:list_app/model/item.dart';
import 'package:list_app/model/item_tag.dart';
import 'package:list_app/util/interal_file_io.dart';
import 'package:list_app/widgets/homepage.dart';



enum LoadingState { DONE, LOADING, WAITING, ERROR }

class App extends StatefulWidget {
  final AppData appData;

  App(this.appData);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppState();
  }
}

class _AppState extends State<App> {
  LoadingState _loadingState = LoadingState.LOADING;
  bool _isLoading = false;

  //TODO:Eventualy replace test.json with a webserver

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List app",
      home: _loadMainWidget(),
    );
  }

  Widget _loadMainWidget() {
    switch (_loadingState) {
      case LoadingState.DONE:
        return Homepage(widget.masterItemTagSet);
      case LoadingState.ERROR:
        return Text('something went kinda wrong');
      case LoadingState.LOADING:
        return Center(child: CircularProgressIndicator());
      default:
        return Text('Something went horibly wrong');
    }
  }
}
