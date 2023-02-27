import 'package:flutter/material.dart';

Widget buildGraph(BuildContext context){
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