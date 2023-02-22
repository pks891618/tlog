import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_class.dart';

showAlertDialog(BuildContext context) {
  Widget okButton = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        color: Color(0xffd2eff7),
        child: TextButton(
          child: Text("Yes"),
          onPressed: () {
            //showAlertDialogs(context);
          },
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Container(
        color: Color(0xffd2eff7),
        child: TextButton(
          child: Text("No"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    ],
  );

  AlertDialog alert = AlertDialog(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Configuration Request",
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(
          Icons.close,
          size: 15,
        ),),

      ],
    ),
    content: Row(
      children: [
        CircleAvatar(
          radius: 20,

          backgroundImage: AssetImage('assets/images/download.jpeg'),
          //radius: 220,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Current data from the device will be lost by configuring\nDo you want to continue?",
          style: TextStyle(color: Colors.black87, fontSize: 12),
        ),
      ],
    ),
    actions: [
      okButton,
    ],
  );
  //
  //
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

stopLogging(BuildContext context) {
  Widget okButton = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        color: Color(0xffd2eff7),
        child: TextButton(
          child: Text("Yes"),
          onPressed: () {
            //showAlertDialogs(context);
          },
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Container(
        color: Color(0xffd2eff7),
        child: TextButton(
          child: Text("No"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    ],
  );

  AlertDialog alert = AlertDialog(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Stop Loger Request",
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(
          Icons.close,
          size: 15,
        ),),
      ],
    ),
    content: Row(
      children: [
        CircleAvatar(
          radius: 20,

          backgroundImage: AssetImage('assets/images/download.jpeg'),
          //radius: 220,
        ),
        SizedBox(width: 10),
        Text(
          " WARNING: To Start the logger device requirs to configure again and current data will be lost\n"
          "Please ensure the  current data is saved",
          style: TextStyle(color: Colors.black87, fontSize: 12),
        ),
      ],
    ),
    actions: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("    Do you want to stop Logger ?"),
          SizedBox(
            height: 20,
          ),
          okButton,
        ],
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

showConfiguredata(BuildContext context) {
  List<AddDevice> allDevice = [
    AddDevice(name: "Serial Number",id: "4612100057"),
    AddDevice(name: "Logger Type ",id: "Multilist"),
    AddDevice(name: "Logger Capacity",id:"16000"),
    AddDevice(name: "Measurment Unit",id: "C"),
    AddDevice(name: "Title",id:"461 STM 21"),
    AddDevice(name: "Start Atfer ",id: "00HR 30Min 00Sec"),
    AddDevice(name: "Logger Interval ",id: "00HR 30Min 00Sec"),
    AddDevice(name: "Stop After",id: "When full"),
    AddDevice(name: "Logger Configuration Date ",id: "12/`12/12 04:14:33  PM\n"
        "DD//MM/YY hh/mm/sec"),
    AddDevice(name: "Low Alarm Unit",id: "15"),
    AddDevice(name: "Logger High Alarm Unit",id: "25"),


  ];

  Widget okButton = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        color: Color(0xffd2eff7),
        child: TextButton(
          child: Text("Print"),
          onPressed: () {
            //showAlertDialogs(context);
          },
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Container(
        color: Color(0xffd2eff7),
        child: TextButton(
          child: Text("Ok"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    ],
  );

  AlertDialog alert = AlertDialog(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Configure Device Information",
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(
          Icons.close,
          size: 15,
        ),),
      ],
    ),
    content: Row(
      children: [
        CircleAvatar(
          radius: 20,

          backgroundImage: AssetImage('assets/images/download.jpeg'),
          //radius: 220,
        ),
        SizedBox(width: 10),
        Text(
          "----------------------------------------------------------------------------------------\n"
          "       Device Configured with the following values\n"
          "----------------------------------------------------------------------------------------",
          style: TextStyle(color: Colors.black87, fontSize: 12),
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(


          children: [
            ...List.generate(
                allDevice.length,
                (index) => ListTile(
                      dense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Text(
                        allDevice![index].name.toString(),
                        style: TextStyle(fontSize: 10.0),
                      ),
                  title: Text(":"),
                  trailing: Text(
                    allDevice![index].id.toString(),textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 10.0),
                  ),
                    )),

            SizedBox(
              height: 20,
            ),
            okButton,
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
showCurrentReading(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Row(


      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 20,
          width: 20,
          color: Color(0xff04154f),
        ),
        SizedBox(width: 5.0,),
        Text(
          "Current Reading Window",
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),



      ],
    ),


    actions: [
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 250,
            width: 300,


            child: Stack(
              children: [
                SizedBox(height: 40),
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
                      border: Border.all(color: Colors.black)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Messages",
                                style: TextStyle(color: Colors.black87, fontSize: 12),
                              ),
                              IconButton(onPressed: (){
                                Navigator.pop(context);
                              }, icon: Icon(
                                Icons.close,
                                size: 15,
                              ),),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius:10,

                                backgroundImage: AssetImage('assets/images/download.jpeg'),
                                //radius: 220,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Device is  in Stopped Mode ",
                                style: TextStyle(color: Colors.black87, fontSize: 12),
                              ),
                            ],
                          ),
                          Center(
                            child: Container(
                              color: Color(0xffd2eff7),
                              child: TextButton(
                                child: Text("Ok"),
                                onPressed: () {
                                  //showAlertDialogs(context);
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
          Divider(color: Colors.black87,thickness: 1),
          Container(
                  color: Color(0xffd2eff7),
                  child: TextButton(
                    child: Text("Exit"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),


        ],
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

show(BuildContext context) {
  Widget okButton = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        color: Color(0xffd2eff7),
        child: TextButton(
          child: Text("Yes"),
          onPressed: () {
            //showAlertDialogs(context);
          },
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Container(
        color: Color(0xffd2eff7),
        child: TextButton(
          child: Text("No"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    ],
  );

  AlertDialog alert = AlertDialog(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Configuration Request",
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(
          Icons.close,
          size: 15,
        ),),
      ],
    ),
    content: Row(
      children: [
        CircleAvatar(
          radius: 20,

          backgroundImage: AssetImage('assets/images/download.jpeg'),
          //radius: 220,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Current data from the device will be lost by configuring\nDo you want to continue?",
          style: TextStyle(color: Colors.black87, fontSize: 12),
        ),
      ],
    ),
    actions: [
      okButton,
    ],
  );
  //
  //
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
