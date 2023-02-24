import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/models/anywidget.dart';
import '../custom_class/custom_widget_class.dart';
import '../screens/statical.dart';



configureDevice(BuildContext context) {
  return Consumer<MyModel>(
    builder: (context, value,child) {
      return Column(
        children: [
          SizedBox(height: 120),
          Container(
            height: 150,
            width: 450,
            decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white,),

            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(
                            'assets/images/download.jpeg'),
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
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Color(0xffd2eff7),
                        child: TextButton(
                          child: Text("Yes"),
                          onPressed: () {
                            value.doSomething(show(context));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        color: Color(0xffd2eff7),
                        child: TextButton(
                          child: Text("No"),
                          onPressed: () {
                            value.doSomething(buildBlank(context));
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),


        ],
      );
    }
  );


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
    UserTime(
      name: "Interval:",
      hour: '00',
      min: '30',
      sec: '00',
      day: '00',
      values: '(Value should be >= 00:00:00:05 and 00:18:12:15)',
    ),
  ];

  // AlertDialog alert = AlertDialog(
  //   actions: [
  //     Container(
  //       color: Color(0xffe6f9fc),
  //       child: Column(
  //         children: [
  //           Container(
  //             color:Colors.white,
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(
  //                   children: [
  //                     Container(
  //                       height: 20,
  //                       width: 20,
  //                       color: Color(0xff03114f),
  //                     ),
  //                     SizedBox(
  //                       width: 5.0,
  //                     ),
  //                     Text(
  //                       "Data Configure Window",
  //                       style: TextStyle(color: Colors.black87, fontSize: 15),
  //                     ),
  //                   ],
  //                 ),
  //                 IconButton(
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                   },
  //                   icon: Icon(
  //                     Icons.close,
  //                     size: 15,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 8.0,right: 30),
  //             child:
  //             Column(
  //               children: users.map((userone) {
  //                 return Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Padding(
  //                         padding: const EdgeInsets.all(8.0),
  //                         child: Text(
  //                           userone.name,
  //                           style: TextStyle(fontSize: 11.0),
  //                         ),
  //                       ),
  //                       Container(
  //                           margin: EdgeInsets.all(5),
  //                           width: 300,
  //                           decoration: BoxDecoration(
  //                               border:
  //                               Border.all(color: Colors.black, width: 0.50)),
  //                           child: Text(
  //                             userone.address,
  //                             style: TextStyle(fontSize: 11.0),
  //                           )),
  //                     ]);
  //               }).toList(),
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 80,right: 30),
  //             child: Text(
  //               "value should contain minium of 5 characters",
  //               style: TextStyle(fontSize: 13.0),
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 8.0,right: 30),
  //             child: Column(
  //               children: usertime.map((usertime) {
  //                 return Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Padding(
  //                         padding: const EdgeInsets.all(8.0),
  //                         child: Text(
  //                           usertime.name,
  //                           style: TextStyle(fontSize: 11.0),
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: const EdgeInsets.only(top: 5.0),
  //                         child: Column(
  //                           mainAxisAlignment: MainAxisAlignment.start,
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Container(
  //                               margin: EdgeInsets.all(5),
  //                               width: 300,
  //                               child: Row(
  //                                 children: [
  //                                   Text(
  //                                     "DAY: ",
  //                                     style: TextStyle(fontSize: 11.0),
  //                                   ),
  //                                   Container(
  //                                       width: 40,
  //                                       decoration: BoxDecoration(
  //                                           border: Border.all(
  //                                               color: Colors.black, width: 0.50)),
  //                                       child: Text(
  //                                         usertime.day,
  //                                         style: TextStyle(fontSize: 12.0),
  //                                       )),
  //                                   Text(
  //                                     "  HR: ",
  //                                     style: TextStyle(fontSize: 11.0),
  //                                   ),
  //                                   Container(
  //                                       width: 40,
  //                                       decoration: BoxDecoration(
  //                                           border: Border.all(
  //                                               color: Colors.black, width: 0.50)),
  //                                       child: Text(
  //                                         usertime.hour,
  //                                         style: TextStyle(fontSize: 12.0),
  //                                       )),
  //                                   Text(
  //                                     "  MIN: ",
  //                                     style: TextStyle(fontSize: 11.0),
  //                                   ),
  //                                   Container(
  //                                       width: 40,
  //                                       decoration: BoxDecoration(
  //                                           border: Border.all(
  //                                               color: Colors.black, width: 0.50)),
  //                                       child: Text(
  //                                         usertime.min,
  //                                         style: TextStyle(fontSize: 12.0),
  //                                       )),
  //                                   Text(
  //                                     "  SEC: ",
  //                                     style: TextStyle(fontSize: 11.0),
  //                                   ),
  //                                   Container(
  //                                       width: 40,
  //                                       decoration: BoxDecoration(
  //                                           border: Border.all(
  //                                               color: Colors.black, width: 0.50)),
  //                                       child: Text(
  //                                         usertime.sec,
  //                                         style: TextStyle(fontSize: 12.0),
  //                                       )),
  //                                 ],
  //                               ),
  //                             ),
  //                             Text(
  //                               usertime.values,
  //                               style: TextStyle(fontSize: 12.0),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ]);
  //               }).toList(),
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 8.0,right: 30),
  //             child: Column(
  //               children: logperiod.map((userone) {
  //                 return Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Padding(
  //                         padding: const EdgeInsets.all(8.0),
  //                         child: Text(
  //                           userone.name,
  //                           style: TextStyle(fontSize: 11.0),
  //                         ),
  //                       ),
  //                       Container(
  //                           margin: EdgeInsets.all(5),
  //                           width: 300,
  //                           decoration: BoxDecoration(
  //                               border:
  //                               Border.all(color: Colors.black, width: 0.50)),
  //                           child: Text(
  //                             userone.address,
  //                             style: TextStyle(fontSize: 11.0),
  //                           )),
  //                     ]);
  //               }).toList(),
  //             ),
  //           ),
  //           Divider(
  //             color: Colors.black,
  //           ),
  //           SizedBox(height: 20),
  //           Padding(
  //             padding: const EdgeInsets.all(12.0),
  //             child: Text.rich(
  //               TextSpan(
  //                 text: 'Caution : ',
  //                 style: TextStyle(color: Colors.red, fontSize: 12),
  //                 children: <TextSpan>[
  //                   TextSpan(
  //                       text:
  //                       'Please adjust your system clock with real time clock for accurate results.',
  //                       style: TextStyle(color: Colors.black, fontSize: 12)),
  //                 ],
  //               ),
  //             ),
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             crossAxisAlignment: CrossAxisAlignment.end,
  //             children: [
  //               Container(
  //                 height: 25,
  //                 decoration: BoxDecoration(
  //                   border: Border.all(color: Color(0xff989c99)),
  //                   color: Color(0xffcfd1d0),
  //                 ),
  //                 child: TextButton(
  //                   child: Text(
  //                     "Configure",
  //                     style: TextStyle(fontSize: 10.0,color: Colors.black),
  //                   ),
  //                   onPressed: () {
  //                     //showAlertDialogs(context);
  //                   },
  //                 ),
  //               ),
  //               SizedBox(
  //                 width: 10.0,
  //               ),
  //               Container(
  //                 height: 25,
  //                 decoration: BoxDecoration(
  //                   border: Border.all(color: Color(0xff989c99)),
  //                   color: Color(0xffcfd1d0),
  //                 ),
  //                 child: TextButton(
  //                   child: Text(
  //                     "Cancel",
  //                     style: TextStyle(fontSize: 10.0,color: Colors.black),
  //                   ),
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                   },
  //                 ),
  //               ),
  //             ],
  //           ),
  //           SizedBox(
  //             height: 30,
  //           )
  //         ],
  //       ),
  //     ),
  //   ],
  // );
  // showDialog(
  //   context: context,
  //   builder: (BuildContext context) {
      return Consumer<MyModel>(
        builder: (context, value, child) {
          return
            Column(
              children: [
                SizedBox(height: 50),
                Container(
                  width: 550,
                  decoration: BoxDecoration(
                      color: Color(0xffe6f9fc),
                      border: Border.all(color: Colors.black,)
                  ),
                  child: Column(
                    children: [
                      Container(
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
                                  "Data Configure Window",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 30),
                        child:
                        Column(
                          children: users.map((userone) {
                            return Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      userone.name,
                                      style: TextStyle(fontSize: 11.0),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.all(5),
                                      width: 300,
                                      decoration: BoxDecoration(
                                          border:
                                          Border.all(color: Colors.black,
                                              width: 0.50)),
                                      child: Text(
                                        userone.address,
                                        style: TextStyle(fontSize: 11.0),
                                      )),
                                ]);
                          }).toList(),
                        ),
                      ),
                      Text(
                        "value should contain minium of 5 characters",
                        style: TextStyle(fontSize: 13.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 30),
                        child: Column(
                          children: usertime.map((usertime) {
                            return Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      usertime.name,
                                      style: TextStyle(fontSize: 11.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(5),
                                          width: 300,
                                          child: Row(
                                            children: [
                                              Text(
                                                "DAY: ",
                                                style: TextStyle(
                                                    fontSize: 11.0),
                                              ),
                                              Container(
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.50)),
                                                  child: Text(
                                                    usertime.day,
                                                    style: TextStyle(
                                                        fontSize: 12.0),
                                                  )),
                                              Text(
                                                "  HR: ",
                                                style: TextStyle(
                                                    fontSize: 11.0),
                                              ),
                                              Container(
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.50)),
                                                  child: Text(
                                                    usertime.hour,
                                                    style: TextStyle(
                                                        fontSize: 12.0),
                                                  )),
                                              Text(
                                                "  MIN: ",
                                                style: TextStyle(
                                                    fontSize: 11.0),
                                              ),
                                              Container(
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.50)),
                                                  child: Text(
                                                    usertime.min,
                                                    style: TextStyle(
                                                        fontSize: 12.0),
                                                  )),
                                              Text(
                                                "  SEC: ",
                                                style: TextStyle(
                                                    fontSize: 11.0),
                                              ),
                                              Container(
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.50)),
                                                  child: Text(
                                                    usertime.sec,
                                                    style: TextStyle(
                                                        fontSize: 12.0),
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          usertime.values,
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]);
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 30),
                        child: Column(
                          children: logperiod.map((userone) {
                            return Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      userone.name,
                                      style: TextStyle(fontSize: 11.0),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.all(5),
                                      width: 300,
                                      decoration: BoxDecoration(
                                          border:
                                          Border.all(color: Colors.black,
                                              width: 0.50)),
                                      child: Text(
                                        userone.address,
                                        style: TextStyle(fontSize: 11.0),
                                      )),
                                ]);
                          }).toList(),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text.rich(
                          TextSpan(
                            text: 'Caution : ',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                  'Please adjust your system clock with real time clock for accurate results.',
                                  style: TextStyle(color: Colors.black,
                                      fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 25,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff989c99)),
                              color: Color(0xffcfd1d0),
                            ),
                            child: TextButton(
                              child: Text(
                                "Configure",
                                style: TextStyle(fontSize: 10.0,
                                    color: Colors.black),
                              ),
                              onPressed: () {
                                //showAlertDialogs(context);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            height: 25,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff989c99)),
                              color: Color(0xffcfd1d0),
                            ),
                            child: TextButton(
                              child: Text(
                                "Cancel",
                                style: TextStyle(fontSize: 10.0,
                                    color: Colors.black),
                              ),
                              onPressed: () {
                                value.doSomething(buildBlank(context));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ],
            );

        });
    }