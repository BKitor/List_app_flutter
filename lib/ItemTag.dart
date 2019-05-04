import './Item.dart';

class ItemTag{
  DateTime created;
  DateTime lastEdited;
  String name;
  Set<ItemTag> tags;
  List<Item> items;
}