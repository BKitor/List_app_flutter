import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

import './item.dart';
import './item_tag.dart';
import './utility/interal_file_io.dart';

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

  _loadMasterList() async {
    _isLoading = true;
    try {
      List<Item> l = await fetchMasterItemList();
      setState(() {
        _loadingState = LoadingState.DONE;
        widget.masterItemList.addAll(l);
        l.forEach((i)=>widget.masterItemTagsSet.addAll(i.tags));
        _isLoading = false;
      });
    } catch (e) {
      _isLoading = false;
      print("Couldn't fetch masterItemList");
      setState(() {
        _loadingState = LoadingState.ERROR;
      });
    }
  }

  //TODO:Eventualy replace test.json with a webserver
  _AppState() {
    _loadMasterList();
    print('[app]$widget.masterItemList');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Oh SHIT, It works!"),
        ),
        body: Center(
          child: _loadMainWidget(),
        ),
      ),
    );
  }

  Widget _loadMainWidget(){
    switch (_loadingState) {
      case LoadingState.DONE:
        return Column(
          children: <Widget>[
            Text('${widget.masterItemList}'),
            Text('${widget.masterItemTagsSet}')
          ],
        );
      case LoadingState.ERROR:
        return Text('something went kinda wrong');
      case LoadingState.LOADING:
        return CircularProgressIndicator();
      default:
        return Text('Something went horiblu wrong');

    }
  }
  // void _intiJsonFileForTesting() async {
  //   List<Item> items = [];
  //   for (int i = 0; i < 5; i++) {
  //     items.add(Item('TestItem$i', DateTime.now(), Set()));
  //   }

  //   String encodedSet = jsonEncode(items);

  //   await writeData(encodedSet);
  //   print(await readData());
  // }
}
