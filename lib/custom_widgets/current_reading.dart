import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/models/anywidget.dart';
import 'package:tlog/screens/statical.dart';

import '../screens/data_page.dart';

showCurrentReading(BuildContext context) {
  return Consumer<MyModel>(
    builder: (BuildContext context, value, Widget? child) {
      return Column(
        children: [
          SizedBox(height: 150),
          Container(
            width: 500,
            decoration: BoxDecoration(
                color: Color(0xffe6f9fc),
                border: Border.all(color: Colors.black)),
            child: Padding(
              padding: EdgeInsets.all(8.0),
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
                              "Current Reading Window",
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: 450,
                    child: Stack(
                      children: [
                        // SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            height: 80,
                            width: 200,
                            color: Colors.black,
                          ),
                        ),
                        Positioned(
                          top: 80,
                          left: 80,
                          child: Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Messages",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 12),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          value
                                              .doSomething(buildBlank(context));
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          size: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 10,

                                        backgroundImage: AssetImage(
                                            'assets/images/download.jpeg'),
                                        //radius: 220,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Device is  in Stopped Mode ",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Center(
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff989c99)),
                                        color: Color(0xffcfd1d0),
                                      ),
                                      child: TextButton(
                                        child: Text(
                                          "Ok",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                        onPressed: () {
                                          value.doSomething(
                                              currentAlert(context));
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Colors.black87, thickness: 0.50),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff989c99)),
                        color: Color(0xffcfd1d0),
                      ),
                      child: TextButton(
                        child: Text(
                          "Exit",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        onPressed: () {
                          value.doSomething(buildBlank(context));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    },
  );
}

currentAlert(BuildContext context) {
  return Consumer<MyModel>(builder: (context, value, child) {
    return Column(children: [
      SizedBox(height: 100),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
            width: 500,
            color: Color(0xffe6f9fc),
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
                            "Current Reading Window",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 15),
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
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 80, right: 80, bottom: 100),
                  child: Row(
                    children: [
                      Container(
                          height: 100,
                          width: 250,
                          color: Colors.black87,
                          child: Center(
                            child: Text(
                              "+31.6,V",
                              style: TextStyle(
                                  fontSize: 55,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "C",
                          style: TextStyle(
                              fontSize: 55,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff989c99)),
                        color: Color(0xffcfd1d0),
                      ),
                      child: TextButton(
                        child: Text(
                          "Exit",
                          style: TextStyle(fontSize: 10.0, color: Colors.black),
                        ),
                        onPressed: () {
                          value.doSomething(buildBlank(context));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            )),
      )
    ]);
  });
}

currentMessage(BuildContext context) {
  return Consumer<MyModel>(builder: (context, value, child) {
    return Container(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),

      width: 450,

      child: Column(
        children: [
          Row(
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
          Row(
            children: [
              CircleAvatar(
                radius: 20,

                backgroundImage: AssetImage('assets/images/download.jpeg'),
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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color(0xffd2eff7),
              child: TextButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DataPage()));
                  //value.doSomething(show(context));
                },
              ),
            ),
          ),

          //
        ],
      ),
      // color: Colors.red,
    );
  });
}
