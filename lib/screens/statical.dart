import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../custom_widgets/current_reading.dart';
import '../models/anywidget.dart';
import 'data_page.dart';
enum SingingCharacter { lafayette, jefferson }

Widget buildStatical(BuildContext context){
  SingingCharacter? _character = SingingCharacter.lafayette;
var Size = MediaQuery.of(context).size;
  return
    Consumer<MyModel>(
      builder: ( context, value,  child) {
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
                top: 100, left: 400,
                child: Container(
                  width: 500,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                       color: Color(0xffe4f3f7)
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

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
                        ],
                      ),
                      Container(


                        child: Stack(
                          children: [
                            Column(


                              children: [
                   Padding(
                     padding: EdgeInsets.all(10.0),
                     child: Text('Statical Data Selection', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold
                                   ),),
                   ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(onPressed: (){


                                    if (value.checkExpand == false ) {
                                      value.checkExpand1 ==  true ? value.checkSomething1(false) : null;

                                      value.checkSomething(true);
                                    } else {
                                      value.checkExpand == false;
                                    }
                                  }, icon: value.checkExpand == true ?
                                  Icon(Icons.radio_button_checked,size: 15,) : Icon(Icons.radio_button_off_outlined,size: 15,)),
                                  Text("Statical data of full cycle  ",style: TextStyle(fontSize:12),),
                                ],
                              ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(onPressed: (){
                                      if (value.checkExpand1 == false ) {
                                        value.checkExpand ==  true ? value.checkSomething1(false) : null;

                                        value.checkSomething1(true);
                                      } else {
                                        value.checkExpand1 == false;
                                      }
                                      },
                                        icon: value.checkExpand1  == true ?   Icon(Icons.radio_button_checked,size: 15,) :
                                    Icon(Icons.radio_button_off_outlined,size: 15,)),
                                    Text("Statical data of full cycle  ",style: TextStyle(fontSize:12),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("Activation Enery H for MKT: "),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black)
                                      ),
                                      child:FittedBox(
                                        child: Text("83.14472"),
                                      ),
                                    ),
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
                                    Container(
                                      height: 20,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black)
                                      ),
                                      // child:FittedBox(
                                      //   child: Text(""),
                                      // ),
                                    ),



                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Tempreature Upper Limit "),
                                      Container(
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black)
                                        ),
                                        // child:FittedBox(
                                        //   child: Text("83.14472"),
                                        // ),
                                      ),


                                    ],
                                  ),
                                ),
                                Divider(color: Colors.black,endIndent: 5,indent: 5,),
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
                                            "Show Statical Data",
                                            style: TextStyle(fontSize: 10.0,
                                                color: Colors.black),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(builder: (context) => DataPage()));
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
                                            "Cancel ",
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
                                // Expanded(
                                //   child: DropdownButtonHideUnderline(
                                //     child: DropdownButton2(
                                //       hint: Text(
                                //         '',
                                //         style: TextStyle(
                                //           fontSize: 14,
                                //           color: Theme
                                //               .of(context)
                                //               .hintColor,
                                //         ),
                                //       ),
                                //       items: value.items
                                //           .map((item) =>
                                //           DropdownMenuItem<String>(
                                //             value: item,
                                //             child: Text(
                                //               item,
                                //               style: const TextStyle(
                                //                 fontSize: 14,
                                //               ),
                                //             ),
                                //           ))
                                //           .toList(),
                                //       value: value.selectedItem,
                                //       onChanged: (  val) {
                                //         value.setSelectedItem(val.toString());
                                //         },
                                //       buttonHeight: 40,
                                //       buttonWidth: 140,
                                //       itemHeight: 40,
                                //     ),
                                //   ),
                                // ),

                              ],
                            ),
                            value.checkExpand == true ?
                            Positioned(
                              top: 0,
                                left: 20,
                                child: currentMessage(context),
                            ) : SizedBox()
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
      });
}



Widget buildBlank(BuildContext context){
  var Size = MediaQuery.of(context).size;
  return
    Container(
      height: Size.height/1.1,
      color: Colors.white,


    );
}



