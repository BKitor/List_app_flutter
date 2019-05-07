import 'package:flutter/material.dart';

import 'item_tag.dart';

class MainItemListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainItemListViewState();
  }
}

class _MainItemListViewState extends State<MainItemListView> {
  List<ItemTag> lists;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("MainList"),
      ),
      body: _buildMainListView(),
    );
  }

  Widget _buildMainListViewRow(ItemList) {}

  Widget _buildFinalRow() {}

  Widget _buildMainListView() {
    return ListView.builder(
      itemBuilder: (context, int i) {
        if (i.isOdd) {
          return Divider();
        }
        final int index = i ~/ 2;
        return index < lists.length
            ? _buildMainListViewRow(lists[index])
            : _buildFinalRow();
      },
      itemCount: (lists.length * 2) + 1,
    );
  }
}
