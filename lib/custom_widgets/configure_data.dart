import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/models/anywidget.dart';
import 'package:tlog/screens/custom_button.dart';
import '../custom_class/custom_widget_class.dart';
import '../screens/statical.dart';
import 'battery_alert.dart';
showConfiguredata(BuildContext context) {
  List<AddDevice> allDevice = [
    AddDevice(name: "Serial Number", id: "4612100057"),
    AddDevice(name: "Logger Type ", id: "Multilist"),
    AddDevice(name: "Logger Capacity", id: "16000"),
    AddDevice(name: "Measurment Unit", id: "C"),
    AddDevice(name: "Title", id: "461 STM 21"),
    AddDevice(name: "Start Atfer ", id: "00HR 30Min 00Sec"),
    AddDevice(name: "Logger Interval ", id: "00HR 30Min 00Sec"),
    AddDevice(name: "Stop After", id: "When full"),
    AddDevice(name: "Logger Configuration Date ", id: "12/`12/12 04:14:33  PM\n"
            "DD//MM/YY hh/mm/sec"),
    AddDevice(name: "Low Alarm Unit", id: "15"),
    AddDevice(name: "Logger High Alarm Unit", id: "25"),
  ];


      return Consumer<MyModel>(
        builder: ( context, value,  child) {
          return Container(
            height: 400,
              width: 500,
              decoration: BoxDecoration(
                  color: Color(0xfff0faf9),
                  border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Configure Device Information",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 15),
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width:8.0),
                      CircleAvatar(
                        radius: 20,

                        backgroundImage: AssetImage(
                            'assets/images/download.jpeg'),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            DottedLine(
                              lineLength: 350, lineThickness: 1,),

                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Device Configured with the following values",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12),
                              ),
                            ),
                            DottedLine(
                              lineLength: 350, lineThickness: 1,),
                            SizedBox(height: 20),
                            Column(
                              children: allDevice.map((alldevice) {
                                return Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(top:5.0),
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20.0, right: 10.0),
                                          width: 200,
                                          decoration: BoxDecoration(
                                              //color: Colors.pink
                                          ),

                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Text(
                                                alldevice.name.toString(),
                                                style: TextStyle(
                                                    fontSize: 12.0,color: Colors.black,fontWeight: FontWeight.w400),
                                              ),
                                              Text(":"),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                          width: 200,
                                          decoration: BoxDecoration(),
                                          child: Text(
                                            alldevice.id.toString(),
                                            style: TextStyle(
                                                fontSize: 12.0,color: Colors.black,fontWeight: FontWeight.w400),
                                          )),
                                    ]);
                              }).toList(),
                            ),
                            SizedBox(height:15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .center,
                              crossAxisAlignment: CrossAxisAlignment
                                  .center,
                              children: [
                                SizedBox(width: 150),
                                BackArrowButton(
                                  child: Text(
                                    "Print",
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black),
                                  ),
                                  onPressed: () {
                                    //showAlertDialogs(context);
                                  },
                                ),

                                SizedBox(
                                  width: 10.0,
                                ),
                                BackArrowButton(
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black),
                                  ),
                                  onPressed: () {
                                    value.doSomething(
                                        batteryAlert(context));
                                  },
                                ),

                              ],
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ));
        });
}













