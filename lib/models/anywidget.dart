import 'package:flutter/cupertino.dart';

class MyModel extends ChangeNotifier {
  bool checkExpand = false;

  Widget? someValue;
  Widget? get _someValue => someValue;
  bool get _tablegraphExpanded => checkExpand;

  void doSomething(val) {
    someValue =val;
    notifyListeners();

  }
  void checkSomething(val) {
    checkExpand =val;
    notifyListeners();

  }
}