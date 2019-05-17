import 'package:flutter/material.dart';
import './item_list_view.dart';
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
      subtitle: Text(i.dateLastEdited.toIso8601String()),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemListView(i)));
      },
    );
  }

  Widget _buildFinalRow() {
    return ListTile(
      title: Text("New List"),
      trailing: Icon(Icons.add),
      onTap: () {
        
      },
    );
  }
}
