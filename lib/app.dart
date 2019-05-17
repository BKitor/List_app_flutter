import 'package:flutter/material.dart';

import './model/item.dart';
import './model/item_tag.dart';
import './util/interal_file_io.dart';
import './widgets/homepage.dart';
import './model/item_tag.dart';

enum LoadingState { DONE, LOADING, WAITING, ERROR }

class App extends StatefulWidget {
  final List<Item> masterItemList = [];
  final Set<ItemTag> masterItemTagsSet = {};

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
  _AppState() {}

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
        return Homepage(widget.masterItemTagsSet);
      case LoadingState.ERROR:
        return Text('something went kinda wrong');
      case LoadingState.LOADING:
        return Center(child: CircularProgressIndicator());
      default:
        return Text('Something went horibly wrong');
    }
  }
}

class LoadJsonFromString{
  static Map<String, dynamic> load(String jsonStr){
    
  }
}