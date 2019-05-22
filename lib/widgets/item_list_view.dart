import 'package:flutter/material.dart';
import 'package:list_app/model/app_data.dart';
import 'package:list_app/model/item.dart';
import 'package:list_app/model/item_tag.dart';

class ItemListView extends StatefulWidget {
  final AppData appData = AppData.appData;
  final ItemTag itemTag;

  ItemListView(this.itemTag);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ItemListViewState();
  }
}

class _ItemListViewState extends State<ItemListView> {
  List<Item> itemList = [];

  @override
  void initState() {
    super.initState();
    itemList.addAll(widget.appData.masterRelationMap[widget.itemTag]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.itemTag.name),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, //TODO:Menu on press
              icon: Icon(
                Icons.menu,
              ))
        ],
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) => _buildTile(index),
      ),
    );
  }

  Widget _buildTile(int index) {
    return ListTile(
      onTap: (){},//TODO:List Tile on tap
      title: Text(itemList[index].name),
    );
  }
}
