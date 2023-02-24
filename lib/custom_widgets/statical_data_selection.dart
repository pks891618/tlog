import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

staticalDataSelection(BuildContext context) {
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