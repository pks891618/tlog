import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class MyModel extends ChangeNotifier {
  SingingCharacter buttons = SingingCharacter.lafayette;
  bool radioSelect = false;
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
  List<String> Day = [
    "00",
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
  ];
  List<String> HR = [
    "00",
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
  ];

  List<String> MIN = [
    "00",
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    "60",
  ];

  List<String> SEC = [
    "00",
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    "60",
  ];

  List<String> get _items => items;
  List<String> get _items1 => items1;
  SingingCharacter get _buttons => buttons;
  bool checkExpand = false;
  int? isfavourite;
  bool checkExpand1 = false;
  String? selectedItem;
  String? selectedItem1;

  String? selecteDAY;
  String? selectedDay1;
  String? selecteHR;
  String? selectedHR1;
  String? selecteMIN;
  String? selectedMIN1;
  String? selecteSEC;
  String? selectedSEC1;

  Widget? someValue;
  Widget? get _someValue => someValue;
  bool get _checkExpand => checkExpand;
  bool get _checkExpand1 => checkExpand1;
  bool get _radioSelect => radioSelect;

  int? get _isfavourite => isfavourite;
  String? get selected => selectedItem;
  String? get _selecteDAY => selecteDAY;
  String? get _selecteDAY1 => selecteDAY1;
  String? get _selecteHR => selecteHR;
  String? get _SelecteHR1 => selectedHR1;
  String? get _selecteMIN => selecteMIN;
  String? get _selecteMIN1 => selectedMIN1;
  String? get _selecteSEC => selecteSEC;
  String? get _selecteSEC1 => selectedSEC1;

  double? height = 45.0;
  bool isExpanded = false;
  double? get _height => height;
  bool get expanded => isExpanded;

  get selecteDAY1 => null;

  get selecteMIN1 => null;
  void setExpanded(bool value) {
    isExpanded = value;
    notifyListeners();
  }

  void setRadioSelect(bool val) {
    radioSelect = val;
    notifyListeners();
  }

  void setFavourite(val) {
    isfavourite = val;
    notifyListeners();
  }

  void buttonSelect(SingingCharacter value) {
    buttons = value;
    notifyListeners();
  }

  void doSomething(val) {
    someValue = val;
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

  void doselectedDay(val) {
    selecteDAY = val;
    notifyListeners();
  }

  void doselectedDay1(val) {
    selectedDay1 = val;
    notifyListeners();
  }

  void doselectedHR(val) {
    selecteHR = val;
    notifyListeners();
  }

  void doselectedHR1(val) {
    selectedHR1 = val;
    notifyListeners();
  }

  void doselectedMIN(val) {
    selecteMIN = val;
    notifyListeners();
  }

  void doselectedMIN1(val) {
    selectedMIN1 = val;
    notifyListeners();
  }

  void doselectedSEC(val) {
    selecteSEC = val;
    notifyListeners();
  }

  void doselectedSEC1(val) {
    selectedSEC1 = val;
    notifyListeners();

    //void doselectedHR(String? val) {}
  }

  void checkSomething(val) {
    checkExpand = val;
    notifyListeners();
  }

  void checkSomething1(val) {
    checkExpand1 = val;
    notifyListeners();
  }
  void clearData() {
    selecteDAY = null;
    selectedDay1 = null;
    selecteHR = null;
    selectedHR1 = null;
    selecteMIN = null;
    selectedMIN1 = null;
    selecteSEC = null;
    selectedSEC1 = null;
    notifyListeners();
  }
}
