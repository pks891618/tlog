import 'package:flutter/cupertino.dart';

class MyModel extends ChangeNotifier {
  List<String> items = [
    "12/12/22  04:22:05 PM",
    "12/12/22  04:52:05 PM",
    "12/12/22  04:22:05 PM",
    "12/12/22  04:52:05 PM",
    "12/12/22  04:22:05 PM",
    "12/12/22  04:52:05 PM",
    "12/12/22  04:22:05 PM",
    "12/12/22  04:52:05 PM",
  ];
  List<String> get _items => items;

  bool checkExpand = false;
  bool checkExpand1 = false;
  String? selectedItem;
  Widget? someValue;
  Widget? get _someValue => someValue;
  bool get _checkExpand => checkExpand;
  bool get _checkExpand1 => checkExpand1;
  String? get selected => selectedItem;

  void doSomething(val) {
    someValue =val;
    notifyListeners();

  }
  void checkSomething(val) {
    checkExpand =val;
    notifyListeners();

  }
  void checkSomething1(val) {
    checkExpand1 = val;
    notifyListeners();

  }
  void setSelectedItem(String s) {
    selectedItem = s;
    notifyListeners();
  }
}