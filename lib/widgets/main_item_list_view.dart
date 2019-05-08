import 'package:flutter/material.dart';
import '../model/item.dart';
import '../model/item_tag.dart';

class MainItemListView extends StatefulWidget {
  final List<ItemTag> lists;
  MainItemListView(this.lists);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainItemListViewState();
  }
}

class _MainItemListViewState extends State<MainItemListView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement homepage
    print('[main_item_list_view]${widget.lists}');
    print('${widget.lists.length + 1}');
    return _buildMainListView();
  }

  Widget _buildMainListView() {
    return ListView.builder(
      itemBuilder: (context, i) => Container(
            padding: EdgeInsets.all(10),
            child: (i >= widget.lists.length)
                ? _buildFinalRow()
                : _buildMainListViewRow(widget.lists[i]),
          ),
      itemCount: widget.lists.length + 1,
    );
  }

  Widget _buildMainListViewRow(ItemTag i) {
    return ListTile(
      title: Text(i.name),
      subtitle: Text(i.lastEdited.toIso8601String()),
      onTap: () {},
    );
  }

  Widget _buildFinalRow() {
    return ListTile(
      title: Text("New List"),
      onTap: () {},
    );
  }
}
