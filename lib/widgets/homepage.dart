import 'package:flutter/material.dart';

import '../model/item_tag.dart';
import 'main_item_list_view.dart';
class Homepage extends StatelessWidget{
  final Set<ItemTag> lists;

  Homepage(this.lists);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListApp"),
      ),
      body: MainItemListView(lists.toList()),
    );
  }
}