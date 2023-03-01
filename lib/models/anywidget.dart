import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
enum SingingCharacter { lafayette, jefferson }

class MyModel extends ChangeNotifier {
  SingingCharacter buttons = SingingCharacter.lafayette;
  List<String> items = [
    "12/12/22  04:22:05 PM",
    "12/12/22  04:32:05 PM",
    "12/12/22  04:22:00 PM",
    "12/12/22  04:42:05 PM",
    "12/12/22  04:22:44 PM",
    "12/12/22  04:51:05 PM",
    "12/12/22  04:22:09 PM",
    "12/12/22  04:50:05 PM",
  ];
  List<String> items1 = [
    "12/12/22  04:21:05 PM",
    "12/12/22  04:22:05 PM",
    "12/12/22  04:23:00 PM",
    "12/12/22  04:24:05 PM",
    "12/12/22  04:25:44 PM",
    "12/12/22  04:26:05 PM",
    "12/12/22  04:27:09 PM",
    "12/12/22  04:50:05 PM",
  ];

  List<String> get _items => items;
  List<String> get _items1 => items1;
  SingingCharacter get _buttons => buttons;
  bool checkExpand = false;
  int? isfavourite;
  bool checkExpand1 = false;
  String? selectedItem;
  String? selectedItem1;
  Widget? someValue;
  Widget? get _someValue => someValue;
  bool get _checkExpand => checkExpand;
  bool get _checkExpand1 => checkExpand1;

  int? get _isfavourite => isfavourite;
  String? get selected => selectedItem;
  double? height = 45.0;
  bool isExpanded = false;
  double? get _height => height;
  bool get expanded => isExpanded;
  void setExpanded(bool value) {
    isExpanded = value;
    notifyListeners();
  }
  void setFavourite( val) {
    isfavourite = val;
    notifyListeners();
  }
  void buttonSelect(SingingCharacter value) {
    buttons = value;
    notifyListeners();
  }
  void doSomething(val) {
    someValue =val;
    notifyListeners();
  }
  void doselectedItem(val) {
    selectedItem = val;
    notifyListeners();
  }
  void doselectedItem1(val) {
    selectedItem1 = val;
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
}