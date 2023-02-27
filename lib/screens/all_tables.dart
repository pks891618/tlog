import 'package:flutter/material.dart';

Widget buildTable(BuildContext context){
  var Size = MediaQuery.of(context).size;
  return
    Container(
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
                        border: Border.all(color: Color(0xffb3b5b4),width:2)
                    ),
                    child: Column(
                      children: [
                        Container(
                          height:30,
                          child: Table(

                            border: TableBorder.symmetric(
                              outside: BorderSide.none,
                              inside: const BorderSide(width: 1, color: Colors.white, style: BorderStyle.solid),
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

        ],
      ),
    );
}