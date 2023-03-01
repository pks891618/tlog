import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/models/anywidget.dart';
import 'package:tlog/screens/custom_button.dart';



import '../custom_class/custom_widget_class.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  List<tempreatureData> alltempreture = [
    tempreatureData(tempreture: 'Maximum Tempreature: +30.8 '),
    tempreatureData(tempreture: 'Minimum Tempreature: +25.3'),
    tempreatureData(tempreture: 'Average Tempreature: 27.3 '),
    tempreatureData(tempreture: 'Standart Deviation of Tempreature: 0.6 '),
    tempreatureData(tempreture: 'Mean Kinectic Tempreature: 27.6 '),
    tempreatureData(tempreture: 'Number of Point for Tempreature below lower limit 35 : 246(Time : 05Day  03Hr 00min 00Sec)'),
    tempreatureData(tempreture: 'Number of Point for Tempreature above lower limit 55:0(Time : 00Min 00Hr 00Sec)'),
    tempreatureData(tempreture: 'Number of Point for Tempreature between 35 and 55.0 lower limit(Time : 00Min 00Hr 00Sec)'),
  ];
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer<MyModel>(
        builder: (context, value, child) {
          return Container(
            height: Size.height,
            width: Size.width,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                            "Statical Data Window",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 15),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                         // value.doSomething(buildBlank(context));
                        },
                        icon: Icon(
                          Icons.close,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    height: Size.height / 1.2,
                    width: Size.width,
                    decoration: BoxDecoration(
                        color: Color(0xffbaada4),
                        border: Border.all(color: Color(0xff8a8887))
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children: [
                        Text("Note Date & Time format (DD/MM/YY hh:mm:ss:a)"),
                        SizedBox(height: 15),
                        Text("Title 461 STm 21 | Serial Number 461210000 "),
                        SizedBox(height: 2),
                        Text(
                            " Logger Interval: 00Hr 30Min 00Sec | Offloaded Time : "
                                "17/12/22  06:52::05 PM | Total Logged Points: 246"),
                        SizedBox(height: 18),
                        Text(
                            "Statical Data Form 12/12/22 04/22/05 PM To: 17/12/22  06:52:05 PM"),

                        Text(
                            "Total Statistical Points : 246 | Total Time : 05 Day 3Hr 00Min 00 Sec "),
                        SizedBox(height: 18),
                        DottedLine(lineLength: 450,),
                        SizedBox(height: 2),
                        DottedLine(lineLength: 450,),
                        Text("Tempreature"),
                        DottedLine(lineLength: 450,),
                        SizedBox(height: 2),
                        DottedLine(lineLength: 450,),
                        SizedBox(height: 2),
                        Column(
                          children: alltempreture.map((alltempreture) {
                            return Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      alltempreture!.tempreture.toString(),
                                      //style: TextStyle(fontSize: 11.0),
                                    ),
                                  ),


                                ]);
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BackArrowButton(


                              child: Text(
                                "Ok",
                                style: TextStyle(fontSize: 10.0,
                                    color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),

                        SizedBox(width: 5.0,),
                        BackArrowButton(


                              child: Text(
                                "Print",
                                style: TextStyle(fontSize: 10.0,
                                    color: Colors.black),
                              ),
                              onPressed: () {

                              },
                            ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),

    );
  }
}
