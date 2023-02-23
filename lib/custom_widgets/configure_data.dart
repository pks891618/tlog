
import 'package:flutter/material.dart';

import '../custom_class/custom_widget_class.dart';

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
    AddDevice(
        name: "Logger Configuration Date ",
        id: "12/`12/12 04:14:33  PM\n"
            "DD//MM/YY hh/mm/sec"),
    AddDevice(name: "Low Alarm Unit", id: "15"),
    AddDevice(name: "Logger High Alarm Unit", id: "25"),
  ];




  AlertDialog alert = AlertDialog(


    actions: [
      Padding(
        padding:  EdgeInsets.all(12.0),
        child:
        Column(
          children: [


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Configure Device Information",
                  style: TextStyle(color: Colors.black87, fontSize: 15),
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



            Row(
              children: [
                CircleAvatar(
                  radius: 20,

                  backgroundImage: AssetImage('assets/images/download.jpeg'),
                  //radius: 220,
                ),
                SizedBox(width: 10),
                Text(
                  "---------------------------------------------------------------------------------------------------------------------------------------\n"
                      "       Device Configured with the following values\n"
                      "----------------------------------------------------------------------------------------------------------------------------------------",
                  style: TextStyle(color: Colors.black87, fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 20),

            Column(
              children: allDevice.map((alldevice) {
                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 5.0,right: 10.0),
                        width: 250,
                        decoration: BoxDecoration(
                          // border:
                          // Border.all(color: Colors.black, width: 0.50)
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              alldevice.name.toString(),
                              style: TextStyle(fontSize: 11.0),
                            ),
                            Text(":"),
                          ],
                        ),
                      ),
                      Container(


                          width: 300,
                          decoration: BoxDecoration(
                            // border:
                            // Border.all(color: Colors.black, width: 0.50)
                          ),
                          child: Text(
                            alldevice.id.toString(),
                            style: TextStyle(fontSize: 11.0),
                          )),
                    ]);
              }).toList(),
            ),
            SizedBox(height: 20),
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
                      "Print",
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
                      "Ok",
                      style: TextStyle(fontSize: 10.0,color: Colors.black),
                    ),
                    onPressed: () {
                       Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            )


          ],
        ),
      )
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
