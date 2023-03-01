import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/models/anywidget.dart';
import 'package:tlog/screens/custom_button.dart';
import 'package:tlog/screens/statical.dart';

batteryAlert(BuildContext context) {
  return Consumer<MyModel>(
    builder: (context, value, child) {
      return
        Column(
          children: [
            SizedBox(height: 100),
            Container(
              width: 400,
              color: Color(0xffe6f9fc),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
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
                              "Battery Voltage Window",
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
                  ),
                  SizedBox(height: 30),
                  Text("+3.43,V", style: TextStyle(fontSize: 55,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),),
                  SizedBox(height: 30),

                  Divider(
                    color: Colors.black,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,


                    children: [
                      BackArrowButton(


                            child: Text(
                              "Refresh",
                              style: TextStyle(fontSize: 10.0,
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
                              "Exit",
                              style: TextStyle(fontSize: 10.0,
                                  color: Colors.black),
                            ),
                            onPressed: () {
                              value.doSomething(buildBlank(context));


                            },

                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),

          ],
        );
    }
  );

}