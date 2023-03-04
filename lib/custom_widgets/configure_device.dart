import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/models/anywidget.dart';
import '../custom_class/custom_widget_class.dart';

import '../screens/custom_button.dart';
import '../screens/statical.dart';

configureDevice(BuildContext context) {
  return Consumer<MyModel>(builder: (context, value, child) {
    return Column(
      children: [
        SizedBox(height: 120),
        Container(
          //  height: 120,
          width: 450,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Color(0xfff0faf9),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Configuration Request",
                      style: TextStyle(color: Colors.black87, fontSize: 15),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage:
                          AssetImage('assets/images/download.jpeg'),
                      //radius: 220,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Current data from the device will be lost by configuring\nDo you want to continue?",
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    ),
                  ],
                ),
              ),
              //  SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BackArrowButton(
                      onPressed: () {
                        value.doSomething(show(context));
                      },
                      child: Text(
                        'Yes',
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    BackArrowButton(
                      onPressed: () {
                        value.doSomething(buildBlank(context));
                      },
                      child: Text(
                        'No',
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  });
}

show(BuildContext context) {
  List<User> users = [
    User(name: "Serial Type# :", address: "46121000S7"),
    User(name: "Logger Type :", address: "Multi use"),
    User(name: "Logger Capacity :", address: "16000"),
    User(name: "Mesaurment Unit : ", address: "C"),
    User(name: "Title:", address: "461 STM 21"),
  ];
  List<LogPeriod> logperiod = [
    LogPeriod(
        name: "Total Logging Period :", address: "333Day 08Hr 00Min 00Sec"),
    LogPeriod(name: "Low Alarm Limit(C):", address: "15"),
    LogPeriod(name: "High Alarm Limit(C) :", address: "25"),
  ];
  List<UserTime> usertime = [
    UserTime(
      name: "Start Delay:",
      day: '00',
      hour: '00',
      min: '01',
      sec: '00',
      values: '(Start delay should be >= 00:00:00:05)',
    ),
  ];
  List<UserInterval> userinterval = [
    UserInterval(
      name: "Interval:",
      hour: '00',
      min: '30',
      sec: '00',
      day: '00',
      values: '(Value should be >= 00:00:00:05 and 00:18:12:15)',
    ),
  ];
  return Consumer<MyModel>(builder: (context, value, child) {
    return Column(
      children: [
        SizedBox(height: 50),
        Container(
          width: 400,
          decoration: BoxDecoration(
              color: Color(0xffe6f9fc),
              border: Border.all(
                color: Colors.black,
              )),
          child: Column(
            children: [
              Container(
                height: 30,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            color: Color(0xff03114f),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Data Configuration Window",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          value?.doSomething(buildBlank(context));
                        },
                        icon: Icon(
                          Icons.close,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ...List.generate(
                  users.length,
                  (index) => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 8),
                                child: Text(
                                  users[index].name,
                                  style: TextStyle(fontSize: 11),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 240,
                                  height: 18,
                                  child: const TextField(
                                    cursorColor: Colors.black,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0.22, color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Padding(
                              //   padding:
                              //       const EdgeInsets.only(top: 2, right: 30),
                              //   child: Container(
                              //       width: 240,
                              //       decoration: BoxDecoration(
                              //           border: Border.all(
                              //               color: Colors.black, width: 0.20)),
                              //       child: Text(
                              //         users[index].address,
                              //         style: TextStyle(fontSize: 11),
                              //       )),
                              // ),
                            ],
                          )
                        ],
                      )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2, left: 120),
                    child: Text(
                      "(value should contain minium of 5 characters)",
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ),
                ],
              ),
              ...List.generate(
                  usertime.length,
                  (index) => Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  usertime[index].name,
                                  style: TextStyle(fontSize: 11),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2, right: 30),
                                  child: Container(
                                    // width: 240,
                                    decoration: BoxDecoration(

                                        // border: Border.all(color: Colors.black,width: 0.20)
                                        ),
                                    child: Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            "Day",
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ),

                                        DropdownButtonHideUnderline(
                                          child: Container(
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: Color(0xffcfcbca),
                                              border: Border.all(
                                                  color: Colors.black),
                                            ),
                                            child: DropdownButton2(
                                              // isDense: true,
                                              // isExpanded: true,
                                              itemPadding: EdgeInsets.all(0),
                                              value: value.selecteDAY,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                size: 15,
                                              ),
                                              buttonPadding: EdgeInsets.all(0),
                                              itemHeight: 20,
                                              buttonHeight: 17,
                                              onChanged: (val) {
                                                print(val);
                                                value.doselectedDay(val);
                                              },
                                              items: value.Day.map((map) {
                                                return DropdownMenuItem(
                                                  value: map,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      map,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              dropdownMaxHeight: 150,
                                            ),
                                          ),
                                        ),

                                        // Flexible(
                                        //   flex: 1,
                                        //   child: Container(
                                        //     padding: EdgeInsets.all(1.0),
                                        //     height: 18,
                                        //     width: 30,
                                        //     decoration: BoxDecoration(
                                        //         color: Color(0xffc1c3c7),
                                        //         border: Border.all(
                                        //             color: Colors.black,
                                        //             width: 0.40)),
                                        //     child: Row(
                                        //       mainAxisAlignment:
                                        //           MainAxisAlignment
                                        //               .spaceBetween,
                                        //       children: [
                                        //         Text(
                                        //           usertime[index].day,
                                        //           style:
                                        //               TextStyle(fontSize: 10),
                                        //         ),
                                        //         Icon(
                                        //           Icons.keyboard_arrow_down,
                                        //           size: 12,
                                        //         ),
                                        //       ],
                                        //     ),
                                        //   ),
                                        // ),
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            "HR",
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ),
                                        DropdownButtonHideUnderline(
                                          child: Container(
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: Color(0xffcfcbca),
                                              border: Border.all(
                                                  color: Colors.black),
                                            ),
                                            child: DropdownButton2(
                                              // isDense: true,
                                              // isExpanded: true,
                                              itemPadding: EdgeInsets.all(0),
                                              value: value.selecteHR,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                size: 15,
                                              ),
                                              buttonPadding: EdgeInsets.all(0),
                                              itemHeight: 20,
                                              buttonHeight: 17,
                                              onChanged: (val) {
                                                print(val);
                                                value.doselectedHR(val);
                                              },
                                              items: value.HR.map((map) {
                                                return DropdownMenuItem(
                                                  value: map,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      map,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              dropdownMaxHeight: 150,
                                            ),
                                          ),
                                        ),

                                        /*  Flexible(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.all(1.0),
                                            height: 18,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Color(0xffc1c3c7),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 0.40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  usertime[index].hour,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),*/
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            "MIN",
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ),

                                        DropdownButtonHideUnderline(
                                          child: Container(
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: Color(0xffcfcbca),
                                              border: Border.all(
                                                  color: Colors.black),
                                            ),
                                            child: DropdownButton2(
                                              // isDense: true,
                                              // isExpanded: true,
                                              itemPadding: EdgeInsets.all(0),
                                              value: value.selecteMIN,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                size: 15,
                                              ),
                                              buttonPadding: EdgeInsets.all(0),
                                              itemHeight: 20,
                                              buttonHeight: 17,
                                              onChanged: (val) {
                                                print(val);
                                                value.doselectedMIN(val);
                                              },
                                              items: value.MIN.map((map) {
                                                return DropdownMenuItem(
                                                  value: map,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      map,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              dropdownMaxHeight: 150,
                                            ),
                                          ),
                                        ),
                                        /* Flexible(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.all(1.0),
                                            height: 18,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Color(0xffc1c3c7),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 0.40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  usertime[index].min,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),*/
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            "SEC",
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ),

                                        DropdownButtonHideUnderline(
                                          child: Container(
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: Color(0xffcfcbca),
                                              border: Border.all(
                                                  color: Colors.black),
                                            ),
                                            child: DropdownButton2(
                                              // isDense: true,
                                              // isExpanded: true,
                                              itemPadding: EdgeInsets.all(0),
                                              value: value.selecteSEC,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                size: 15,
                                              ),
                                              buttonPadding: EdgeInsets.all(0),
                                              itemHeight: 20,
                                              buttonHeight: 17,
                                              onChanged: (val) {
                                                print(val);
                                                value.doselectedSEC(val);
                                              },
                                              items: value.SEC.map((map) {
                                                return DropdownMenuItem(
                                                  value: map,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      map,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              dropdownMaxHeight: 150,
                                            ),
                                          ),
                                        ),

                                        /*  Flexible(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.all(1.0),
                                            height: 18,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Color(0xffc1c3c7),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 0.40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  usertime[index].sec,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),*/

                                        // ...List.generate(
                                        //     4,
                                        //     (index) => Container(
                                        //           height: 18,
                                        //           width: 30,
                                        //           decoration: BoxDecoration(
                                        //               border: Border.all(
                                        //                   color: Colors.black)),
                                        //           child: Row(
                                        //             mainAxisAlignment:
                                        //                 MainAxisAlignment
                                        //                     .spaceBetween,
                                        //             children: [
                                        //               Text(
                                        //                 usertime[0].day,
                                        //                 style: TextStyle(
                                        //                     fontSize: 11),
                                        //               ),
                                        //
                                        //
                                        //               Icon(
                                        //                 Icons
                                        //                     .keyboard_arrow_down,
                                        //                 size: 12,
                                        //               ),
                                        //             ],
                                        //           ),
                                        //         )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 120),
                                  child: Text(
                                    "(Start delay should be >= 00:00:00:05)",
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
              ...List.generate(
                  userinterval.length,
                  (index) => Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  userinterval[index].name,
                                  style: TextStyle(fontSize: 11),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2, right: 30),
                                  child: Container(
                                    // width: 240,
                                    decoration: BoxDecoration(
                                        // border: Border.all(color: Colors.black,width: 0.20)
                                        ),
                                    child: Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            "Day",
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ),
                                        DropdownButtonHideUnderline(
                                          child: Container(
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: Color(0xffcfcbca),
                                              border: Border.all(
                                                  color: Colors.black),
                                            ),
                                            child: DropdownButton2(
                                              // isDense: true,
                                              // isExpanded: true,
                                              itemPadding: EdgeInsets.all(0),
                                              value: value.selectedDay1,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                size: 15,
                                              ),
                                              buttonPadding: EdgeInsets.all(0),
                                              itemHeight: 20,
                                              buttonHeight: 17,
                                              onChanged: (val) {
                                                print(val);
                                                value.doselectedDay1(val);
                                              },
                                              items: value.Day.map((map) {
                                                return DropdownMenuItem(
                                                  value: map,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      map,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              dropdownMaxHeight: 150,
                                            ),
                                          ),
                                        ),
                                        /* Flexible(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.all(1.0),
                                            height: 18,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Color(0xffc1c3c7),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 0.40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  userinterval[index].day,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),*/
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            "HR",
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ),
                                        DropdownButtonHideUnderline(
                                          child: Container(
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: Color(0xffcfcbca),
                                              border: Border.all(
                                                  color: Colors.black),
                                            ),
                                            child: DropdownButton2(
                                              // isDense: true,
                                              // isExpanded: true,
                                              itemPadding: EdgeInsets.all(0),
                                              value: value.selectedHR1,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                size: 15,
                                              ),
                                              buttonPadding: EdgeInsets.all(0),
                                              itemHeight: 20,
                                              buttonHeight: 17,
                                              onChanged: (val) {
                                                print(val);
                                                value.doselectedHR1(val);
                                              },
                                              items: value.HR.map((map) {
                                                return DropdownMenuItem(
                                                  value: map,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      map,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              dropdownMaxHeight: 150,
                                            ),
                                          ),
                                        ),

                                        /* Flexible(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.all(1.0),
                                            height: 18,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Color(0xffc1c3c7),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 0.40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  userinterval[index].hour,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),*/
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            "MIN",
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ),
                                        DropdownButtonHideUnderline(
                                          child: Container(
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: Color(0xffcfcbca),
                                              border: Border.all(
                                                  color: Colors.black),
                                            ),
                                            child: DropdownButton2(
                                              // isDense: true,
                                              // isExpanded: true,
                                              itemPadding: EdgeInsets.all(0),
                                              value: value.selectedMIN1,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                size: 15,
                                              ),
                                              buttonPadding: EdgeInsets.all(0),
                                              itemHeight: 20,
                                              buttonHeight: 17,
                                              onChanged: (val) {
                                                print(val);
                                                value.doselectedMIN1(val);
                                              },
                                              items: value.MIN.map((map) {
                                                return DropdownMenuItem(
                                                  value: map,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      map,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              dropdownMaxHeight: 150,
                                            ),
                                          ),
                                        ),
                                        /* Flexible(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.all(1.0),
                                            height: 18,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Color(0xffc1c3c7),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 0.40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  userinterval[index].min,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),*/
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            "SEC",
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ),
                                        DropdownButtonHideUnderline(
                                          child: Container(
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: Color(0xffcfcbca),
                                              border: Border.all(
                                                  color: Colors.black),
                                            ),
                                            child: DropdownButton2(
                                              // isDense: true,
                                              // isExpanded: true,
                                              itemPadding: EdgeInsets.all(0),
                                              value: value.selectedSEC1,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                size: 15,
                                              ),
                                              buttonPadding: EdgeInsets.all(0),
                                              itemHeight: 20,
                                              buttonHeight: 17,
                                              onChanged: (val) {
                                                print(val);
                                                value.doselectedSEC1(val);
                                              },
                                              items: value.SEC.map((map) {
                                                return DropdownMenuItem(
                                                  value: map,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      map,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              dropdownMaxHeight: 150,
                                            ),
                                          ),
                                        ),

                                        /* Flexible(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.all(1.0),
                                            height: 18,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Color(0xffc1c3c7),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 0.40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  userinterval[index].sec,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),*/
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 120),
                                  child: Text(
                                    "(Value should be >= 00:00:00:05 and <= 00:18:12:15)",
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Stop:",
                      style: TextStyle(fontSize: 11),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, right: 30),
                      child: Container(
                        height: 20,
                        width: 240,
                        decoration: BoxDecoration(
                            //color: Colors.pink

                            ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          //  crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Radio(
                            //     value: true,
                            //     groupValue: "groupValue",
                            //     onChanged: (value) => {}),
                            GestureDetector(
                              onTap: () {
                                value.radioSelect == false
                                    ? value.setRadioSelect(true)
                                    : value.setRadioSelect(false);
                              },
                              child: value.radioSelect == false
                                  ? Icon(Icons.radio_button_unchecked,
                                      size: 12, color: Colors.black)
                                  : Icon(Icons.radio_button_checked,
                                      size: 12, color: Colors.black),
                            ),
                            const Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "When full",
                                style: TextStyle(fontSize: 11),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                  logperiod.length,
                  (index) => Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    logperiod[index].name,
                                    style: TextStyle(fontSize: 11.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                      width: 240,
                                      height: 18,
                                      child: const TextField(
                                        cursorColor: Colors.black,
                                        style: TextStyle(fontSize: 12),
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.22,
                                                color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(
                                  //       top: 2, right: 30),
                                  //   child: Container(
                                  //       width: 240,
                                  //       decoration: BoxDecoration(
                                  //           border: Border.all(
                                  //               color: Colors.black,
                                  //               width: 0.20)),
                                  //       child: Text(
                                  //         logperiod[index].address,
                                  //         style: TextStyle(fontSize: 11),
                                  //       )),
                                  // ),
                                ])
                          ],
                        ),
                      )),
              Padding(
                padding: EdgeInsets.only(right: 30, left: 10),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, left: 30),
                child: Text.rich(
                  TextSpan(
                    text: 'Caution : ',
                    style: TextStyle(color: Colors.red, fontSize: 11),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'Please adjust your system clock with real time clock for accurate results.',
                          style: TextStyle(color: Colors.black, fontSize: 10)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BackArrowButton(
                      onPressed: () {
                        value.doSomething(buildConfigure(context));
                      },
                      child: Text(
                        "Configure",
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    BackArrowButton(
                      onPressed: () {
                        value.doSomething(buildBlank(context));
                      },
                      child: Text(
                        "Cancel",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        )
      ],
    );
  });
}

Widget buildConfigure(BuildContext context) {
  SingingCharacter? _character = SingingCharacter.lafayette;
  var Size = MediaQuery.of(context).size;
  return Consumer<MyModel>(builder: (context, value, child) {
    return Container(
      color: Color(0xffe6f9fc),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 25,
                child: Row(
                  children: [
                    Text(
                      "Logger_Data_.inn",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
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
            top: 150,
            left: 400,
            child: Container(
              height: 150,
              width: 500,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Color(0xffe4f3f7)),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Data File",
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        ),
                        IconButton(
                          onPressed: () {
                            value.doSomething(buildBlank(context));
                            // Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,

                          backgroundImage:
                              AssetImage('assets/images/download.jpeg'),
                          //radius: 220,
                        ),
                        SizedBox(width: 10),
                        Text("Do you wan to save the file Data 228321234.tmp ?")
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BackArrowButton(
                        onPressed: () {
                          //value.doSomething(buildBlank(context));
                        },
                        child: Text(
                          "Yes",
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      BackArrowButton(
                        onPressed: () {
                          value.doSomething(buildBlank(context));
                        },
                        child: Text(
                          "No",
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      BackArrowButton(
                        onPressed: () {
                          value.doSomething(buildBlank(context));
                        },
                        child: Text(
                          "Cancel",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  });
}
