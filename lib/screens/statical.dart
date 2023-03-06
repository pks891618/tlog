import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/screens/custom_button.dart';


import '../models/anywidget.dart';
import 'data_page.dart';

Widget buildStatical(BuildContext context) {
  //SingingCharacter? _character = SingingCharacter.lafayette;

  var Size = MediaQuery.of(context).size;
  return Consumer<MyModel>(builder: (context, value, child) {

    return Container(
      color: Color(0xffe6f9fc),
      child: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                height: 25,
                child: Row(
                  children: [
                    Text(
                      "Logger_Data_.inn",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(5.0),
                      child: Container(
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff939995)),
                            //borderRadius: BorderRadius.circular(4.0),
                            color: Color(0xffcfd4d1),
                          ),
                          width: 15,
                          child: FittedBox(
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "T",
                                    style: TextStyle(
                                        fontSize: 35,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )))),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Title : 461 STM21",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      thickness: 1,
                    ),
                    Text(
                      "Serial Number: 461210057",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      thickness: 1,
                    ),
                    Text(
                      "Logger Interval : 00Hr 30Min 00Sec",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Offloaded Time  : 17/12/22 06:52:05Pm",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      thickness: 1,
                    ),
                    Text(
                      "Total Logged Points : 246",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                    width: Size.width,
                    decoration: BoxDecoration(


                        color: Colors.white,
                        border: Border.all(color: Color(0xffb3b5b4), width: 2)),
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          child: Table(
                            border: TableBorder.symmetric(
                              outside: BorderSide.none,
                              inside: const BorderSide(
                                  width: 1,
                                  color: Colors.white,
                                  style: BorderStyle.solid),
                            ),
                            children: [
                              TableRow(children: [
                                TableCell(child: Text("Date(DD/MM/YY)")),
                                TableCell(child: Text("Time")),
                                TableCell(child: Text("Tempreature(C)")),
                              ]),
                            ],
                          ),
                        ),
                        ...List.generate(
                          11,
                          (index) => Table(
                            border: TableBorder.all(
                                width: 1, color: Colors.black45),
                            //table border
                            children: [
                              TableRow(children: [
                                TableCell(child: Text("12/12/12")),
                                TableCell(child: Text("07:00:05 PM")),
                                TableCell(child: Text("+27.7"))
                              ]),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                padding: EdgeInsets.all(30),
                height: Size.height / 2,
                decoration: BoxDecoration(
                    color: Color(0xffb6b8ba),
                    border: Border.all(color: Color(0xffb6b8ba))),
              )
            ],
          ),
          Positioned(
              top: 100,
              left: 400,
              child: Container(
                width: 500,
                // width: Size.width < 1000
                //     ? Size.width / 400
                //     : Size.width / 500,


                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    // color: Colors.red
                    color: Color(0xffe4f3f7)),
                child: Column(children: [
                  Container(
                    height: 30,
                    color: Colors.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  color: Color(0xff0a2145),
                                ),
                              ),
                              Text(
                                "Statical Data Window",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 15),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              value.doSomething(buildBlank(context));
                            },
                            icon: Icon(
                              Icons.close,
                              size: 15,
                            ),
                          ),
                        ]),
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          //color: Colors.pink,
                          width: 400,
                          color: Color(0xffe4f3f7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Statical Data Selection',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 25,
                                child: ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.60,
                                        child: Radio<SingingCharacter>(
                                          activeColor: Colors.grey,
                                          fillColor:
                                              MaterialStateColor.resolveWith(
                                                  (states) => Colors.grey),
                                          value: SingingCharacter.lafayette,
                                          groupValue: value.buttons,
                                          onChanged: (SingingCharacter? val) {
                                            value.buttonSelect(val!);
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Statical Data of full cycle',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Row(
                                  children: [
                                    Transform.scale(
                                      scale: 0.60,
                                      child: Radio<SingingCharacter>(
                                        activeColor: Colors.grey,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.grey),
                                        value: SingingCharacter.jefferson,
                                        groupValue: value.buttons,
                                        onChanged: (SingingCharacter? val) {
                                          value.buttonSelect(val!);
                                        },
                                      ),
                                    ),
                                    Text(
                                      'Statical Data of partial cycle',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text("Date From : "),
                                  DropdownButtonHideUnderline(
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color(0xffcfcbca),
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: DropdownButton2(
                                        itemPadding: EdgeInsets.all(0),
                                        value: value.selectedItem,
                                        icon: Icon(Icons.keyboard_arrow_down,
                                            size: 15),
                                        buttonPadding: EdgeInsets.all(0),
                                        itemHeight: 20,
                                        buttonHeight: 17,
                                        onChanged: (val) {
                                          print(val);
                                          value.doselectedItem(val);
                                        },
                                        items: value.items.map((map) {
                                          return DropdownMenuItem(
                                            value: map,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.0),
                                              child: Text(
                                                map,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("Date To :      "),
                                  DropdownButtonHideUnderline(
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color(0xffcfcbca),
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: DropdownButton2(
                                        itemPadding: EdgeInsets.all(0),
                                        value: value.selectedItem1,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 15,
                                        ),
                                        buttonPadding: EdgeInsets.all(0),
                                        itemHeight: 20,
                                        buttonHeight: 17,
                                        onChanged: (val) {
                                          print(val);
                                          value.doselectedItem1(val);
                                        },
                                        items: value.items1.map((map) {
                                          return DropdownMenuItem(
                                            value: map,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.0),
                                              child: Text(
                                                map,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Text("Activation Enery H for MKT: "),
                                  SizedBox(width: 5.0),
                                  SizedBox(
                                    height: 20,
                                    width: 80,
                                    child: // Note: Same code is applied for the TextFormField as well
                                        TextField(
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0)),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        fillColor: Colors.white,
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color:
                                                  Colors.black), //<-- SEE HERE
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Text("KI/mol"),
                                ],
                              ),
                              Text("(Value Should be >= 100)"),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Tempreature Lower Limit "),
                                  SizedBox(
                                    height: 20,
                                    width: 80,
                                    child: // Note: Same code is applied for the TextFormField as well
                                        TextField(
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0)),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        fillColor: Colors.white,
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color:
                                                  Colors.black), //<-- SEE HERE
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Text("Tempreature Upper Limit "),
                                  SizedBox(
                                    height: 20,
                                    width: 80,
                                    child: // Note: Same code is applied for the TextFormField as well
                                        TextField(
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0)),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        fillColor: Colors.white,
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color:
                                                  Colors.black), //<-- SEE HERE
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 50, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    BackArrowButton(
                                      child: Text(
                                        "Show Statical Data",
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black),
                                      ),
                                      onPressed: () {
                                        if (value.checkExpand == false) {
                                          value.checkExpand1 == true;

                                          value.checkSomething(true);
                                        } else {
                                          value.checkExpand == false;
                                        }
                                      },
                                    ),
                                    SizedBox(width: 5.0),
                                    BackArrowButton(
                                      child: Text(
                                        "Cancel ",
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black),
                                      ),
                                      onPressed: () {
                                        value.doSomething(buildBlank(context));
                                      },
                                    ),
                                    SizedBox(width: 15.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      value.checkExpand == true
                          ? Positioned(
                              left: 20,
                              top: 80,
                              child: currentMessage(context),
                            )
                          : SizedBox()
                    ],
                  )
                ]),
              ))
        ],
      ),
    );
  });
}

currentMessage(BuildContext context) {
  return Consumer<MyModel>(builder: (context, value, child) {
    return Container(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Color(0xffe6f9fc),
      ),

      width: 450,

      child: Column(
        children: [
          Container(
            height: 25,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      color: Color(0xff03114f),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Message",
                      style: TextStyle(color: Colors.black87, fontSize: 15),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    //  Navigator.pop(context);

                    value.doSomething(buildStatical(context));
                  },
                  icon: Icon(
                    Icons.close,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 15,

                backgroundImage: AssetImage('assets/images/error.jpeg'),
                //radius: 220,
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " Validation Error : \nTempreature Lower Limit must be numerical with 1 decimal place.\n"
                  "Tempreature upper limit must be numerical with 1 decimal place",
                  style: TextStyle(color: Colors.black87, fontSize: 12),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: BackArrowButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DataPage()));
                //value.doSomething(show(context));
              },
            ),
          ),
        ],
      ),
      // color: Colors.red,
    );
  });
}

Widget buildBlank(BuildContext context) {
  var Size = MediaQuery.of(context).size;
  Size.height == 1200 ? Size.height == 800 : Size.height/1.1;
  return Container(
    height: Size.height / 1.1,
    color: Colors.pink,
  );
}
