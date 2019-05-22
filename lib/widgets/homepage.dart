import 'package:flutter/material.dart';
import 'package:list_app/model/app_data.dart';
import 'package:list_app/model/item_tag.dart';
import 'package:list_app/widgets/item_list_view.dart';

class Homepage extends StatefulWidget {
  AppData appData = AppData.appData;
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<ItemTag> tagList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tagList.addAll(widget.appData.masterItemTagSet.toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {}, //TODO:Floating Action Button onPressed
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {}, //TODO:Action Button menu options
          ),
        ],
        title: Text("ListApp"),
      ),
      body: ListView.builder(
        itemCount: widget.appData.masterItemTagSet.length,
        itemBuilder: (context, index) => _buildTile(index),
      ),
    );
  }

  _buildTile(int index) {
    return ListTile(
      title: Text(tagList[index].name),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>ItemListView(tagList[index])
        ));
      }, //TODO: use navigator to initiate list view
    );
  }
}
