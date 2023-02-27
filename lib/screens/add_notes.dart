import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/screens/statical.dart';

import '../models/anywidget.dart';

Widget addNotes(BuildContext context){
  var Size = MediaQuery.of(context).size;
  return Consumer<MyModel>(
      builder: (BuildContext context, value, Widget? child) {
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


                            ...List.generate(30, (index) =>
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


                ],
              ),
              Positioned(
                left: 400,
                top: 150,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38)
                  ),



                  child: Column(
                    children: [
                      Row(
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
                                "Graph Comment Setting Window",
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
                      SizedBox(height: 10.0),
                      Text("Enter Comment to display a graph"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)
                          ),
                        ),
                      ),
                      Divider(color: Colors.black,thickness: 2,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff989c99)),
                                color: Color(0xffcfd1d0),
                              ),
                              child: TextButton(
                                child: Text(
                                  "Save",
                                  style: TextStyle(fontSize: 10.0,
                                      color: Colors.black),
                                ),
                                onPressed: () {
                                  value.doSomething(saveGraph(context));
                                },
                              ),
                            ),
                            SizedBox(width: 15.0,),
                            Container(
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff989c99)),
                                color: Color(0xffcfd1d0),
                              ),
                              child: TextButton(
                                child: Text(
                                  "Exit",
                                  style: TextStyle(fontSize: 10.0,
                                      color: Colors.black),
                                ),
                                onPressed: () {

                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              )

            ],
          ),
        );
      }
  );
}
Widget saveGraph(BuildContext context){
  var Size = MediaQuery.of(context).size;
  return
    Container(
      color: Color(0xffe6f9fc),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
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
                color: Colors.white,
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
                color: Colors.white,
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
              SizedBox(height: 25.0,),



              Container(
                // padding: EdgeInsets.all(30),
                height: Size.height/1.3,

                decoration: BoxDecoration(
                    color: Colors.white,


                    border: Border.all(color: Color(0xffb6b8ba))
                ),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Title : 461 STM21",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          VerticalDivider(
                            color: Colors.black87,
                            thickness: 1,
                          ),
                          Text(
                            "Serial Number: 461210057",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          VerticalDivider(
                            color: Colors.black87,
                            thickness: 1,
                          ),
                          Text(
                            "Logger Interval : 00Hr 30Min 00Sec",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Offloaded Time  : 17/12/22 06:52:05Pm",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          VerticalDivider(
                            color: Colors.black87,
                            thickness: 1,
                          ),
                          Text(
                            "Total Logged Points : 246",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: Size.height/2,
                      width: Size.width/1.2,
                      color: Color(0xffc9c6c5),
                    )
                  ],
                ),
              )
            ],
          ),

        ],
      ),
    );
}