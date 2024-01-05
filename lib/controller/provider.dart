import 'package:flutter/material.dart';

class AddProvider extends ChangeNotifier {
  final textcontroller = TextEditingController();
  final textconroller1 = TextEditingController();
  List<String> addlist = [];
  void add() {
    final name = textcontroller.text.trim();
    final name1 = textconroller1.text.trim();
    if (name.isNotEmpty && name1.isNotEmpty) {
      addlist.add("$name$name1");
      textcontroller.clear();
      textconroller1.clear();
    }
    notifyListeners();
  }
}
