import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/models/anywidget.dart';
import '../custom_class/custom_widget_class.dart';
import '../screens/custom_button.dart';
import '../screens/statical.dart';



configureDevice(BuildContext context) {
  return Consumer<MyModel>(
    builder: (context, value,child) {
      return Column(
        children: [
          SizedBox(height: 120),
          Container(

          //  height: 120,
            width: 450,
            decoration: BoxDecoration(border: Border.all(color: Colors.black),   color: Color(0xffe4f3f7),),
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  color:Colors.white,
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
                            child:  Text(
                              'Yes',
                              style: TextStyle(color: Colors.black,fontSize: 11),
                            ),
                          ),

                      SizedBox(width: 5.0),
                      BackArrowButton(
                        onPressed: () {
                              value.doSomething(buildBlank(context));
                            },
                            child:  Text(
                              'No',
                              style: TextStyle(color: Colors.black,fontSize: 11),
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
                                        color:Color(0xfff7f3f2),
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
                                                      color:Color(0xffd9d5d4),
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.50)),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        usertime.day,
                                                        style: TextStyle(
                                                            fontSize: 12.0),
                                                      ),
                                                      SizedBox(width: 8.0,),
                                                      Icon(Icons.keyboard_arrow_down_outlined,size: 12,)
                                                    ],
                                                  )),
                                              Text(
                                                "  HR: ",
                                                style: TextStyle(
                                                    fontSize: 11.0),
                                              ),
                                              Container(
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color:Color(0xffd9d5d4),
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.50)),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        usertime.hour,
                                                        style: TextStyle(
                                                            fontSize: 12.0),
                                                      ),
                                                      SizedBox(width: 8.0,),
                                                      Icon(Icons.keyboard_arrow_down_outlined,size: 12,)
                                                    ],
                                                  )),
                                              Text(
                                                "  MIN: ",
                                                style: TextStyle(
                                                    fontSize: 11.0),
                                              ),
                                              Container(
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color:Color(0xffd9d5d4),
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.50)),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        usertime.min,
                                                        style: TextStyle(
                                                            fontSize: 12.0),
                                                      ),
                                                      SizedBox(width: 8.0,),
                                                      Icon(Icons.keyboard_arrow_down_outlined,size: 12,)
                                                    ],
                                                  )),
                                              Text(
                                                "  SEC: ",
                                                style: TextStyle(
                                                    fontSize: 11.0),
                                              ),
                                              Container(
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color:Color(0xffd9d5d4),
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.50)),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        usertime.sec,
                                                        style: TextStyle(
                                                            fontSize: 12.0),
                                                      ),
                                                      SizedBox(width: 8.0,),
                                                      Icon(Icons.keyboard_arrow_down_outlined,size: 12,)
                                                    ],
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
                        child:
                        Column(
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
                                          color:Color(0xfff7f3f2),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          color: Colors.black,
                        ),
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
                      Padding(
                        padding: const EdgeInsets.only(right: 30,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [


                            BackArrowButton(
                              onPressed: () {
                                  value.doSomething(buildConfigure(context));
                                },
                                child:  Text(
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
                                  child:  Text(
                                    "Cancel",


                                  ),
                                ),
                          ],
                        ),
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
Widget buildConfigure(BuildContext context){
  SingingCharacter? _character = SingingCharacter.lafayette;
  var Size = MediaQuery.of(context).size;
  return
    Consumer<MyModel>(
        builder: (context, value,child) {
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
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                                height: 20,
                                decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Color(0xff939995)),
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
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          VerticalDivider(
                            color: Colors.black87,
                            thickness: 1,
                          ),
                          Text(
                            "Serial Number: 461210057",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          VerticalDivider(
                            color: Colors.black87,
                            thickness: 1,
                          ),
                          Text(
                            "Logger Interval : 00Hr 30Min 00Sec",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
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
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          VerticalDivider(
                            color: Colors.black87,
                            thickness: 1,
                          ),
                          Text(
                            "Total Logged Points : 246",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
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
                              border: Border.all(
                                  color: Color(0xffb3b5b4), width: 2)
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                child: Table(

                                  border: TableBorder.symmetric(
                                    outside: BorderSide.none,
                                    inside: const BorderSide(width: 1,
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


                              ...List.generate(11, (index) =>
                                  Table(
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
                          )

                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      height: Size.height / 2,

                      decoration: BoxDecoration(
                          color: Color(0xffb6b8ba),
                          border: Border.all(color: Color(0xffb6b8ba))
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 150, left: 400,
                  child: Container(
                    height: 150,
                    width: 500,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Color(0xffe4f3f7)
                    ),


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
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 15),
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

                                backgroundImage: AssetImage(
                                    'assets/images/download.jpeg'),
                                //radius: 220,
                              ),
                              SizedBox(width: 10),

                              Text(
                                  "Do you wan to save the file Data 228321234.tmp ?")
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
                                child:  Text(
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
                                child:  Text(
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
                              child:  Text(
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