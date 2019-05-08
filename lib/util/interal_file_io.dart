import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

import '../model/item.dart';

Future<String> get _getLocalPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<File> get _getLocalFile async {
  final path = await _getLocalPath;
  return File('$path/test.json');
}

Future<File> writeData(String data) async {
  final file = await _getLocalFile;
  return file.writeAsString(data);
}

Future<String> readData() async {
  try {
    final file = await _getLocalFile;
    String contents = await file.readAsString();
    return contents;
  } catch (e) {
    return "sheeeeet";
  }
}

Future<List<Item>> fetchMasterItemList() async {
  final List<Item> masterItemList = [];

  List<dynamic> decodedJsonList = jsonDecode(await readData());
  decodedJsonList.forEach((i) => masterItemList.add(Item.fromJson(i)));

  print('[inter_file_io]$masterItemList');
  return masterItemList;
}
