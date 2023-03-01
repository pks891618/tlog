import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/models/anywidget.dart';
import 'package:tlog/screens/custom_button.dart';
import 'package:tlog/screens/statical.dart';



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
                                  Container(
                                    height:25,
                                    child: Row(
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
                                    child: BackArrowButton(


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
                    child: BackArrowButton(


                          child: Text(
                            "Exit",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          onPressed: () {
                            value.doSomething(buildBlank(context));
                          },
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
                    child: BackArrowButton(


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
              ],
            )),
      )
    ]);
  });
}


