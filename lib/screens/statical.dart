import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
enum SingingCharacter { lafayette, jefferson }

Widget buildStatical(BuildContext context){
  SingingCharacter? _character = SingingCharacter.lafayette;
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
                height: Size.height/2,

                decoration: BoxDecoration(
                    color: Color(0xffb6b8ba),
                    border: Border.all(color: Color(0xffb6b8ba))
                ),
              )
            ],
          ),
          Positioned(
            top: 100,left: 400,
            child: Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Color(0xffe4f3f7)
              ),
              //color: Colors.red,
              child:   Column(


                children: [


                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 20,
                                width: 20,
                                color: Color(0xff0a2145),

                              ),
                            ),
                            Text(
                              "Statical Data Window",
                              style: TextStyle(color: Colors.black87, fontSize: 15),
                            ),
                          ],
                        ),

                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text('Statical Data Selection',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold
                  ),),
                  RadioListTile<SingingCharacter>(
                    title:  Text('Statical data of full cycle'),
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      },
                  ),
                  RadioListTile<SingingCharacter>(
                    contentPadding: EdgeInsets.only(top: 2.0,left: 1,right: 1),

                    title:  Text('Statical data of partial cycle'),
                    value: SingingCharacter.jefferson,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      },
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            "Show Statical Data",
                            style: TextStyle(fontSize: 10.0,color: Colors.black),
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
                            style: TextStyle(fontSize: 10.0,color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
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
}
Widget buildGraphTable(BuildContext context){
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
               // padding: EdgeInsets.all(30),
                height: Size.height/2,

                decoration: BoxDecoration(
                  color: Colors.white,
                  
                    
                    border: Border.all(color: Color(0xffb6b8ba))
                ),
                child: Column(
                  children: [
                    Container(
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
                    Container(
                      height: Size.height/5,
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


