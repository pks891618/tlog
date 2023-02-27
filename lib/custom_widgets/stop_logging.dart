import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/models/anywidget.dart';
import 'package:tlog/screens/statical.dart';

stopLoggingAlert(BuildContext context) {
  return Consumer<MyModel>(
        builder: (context, value,child) {
          return Column(

            children: [
              SizedBox(height: 150),
              Container(
                height: 180,
                width: 600,
                decoration: BoxDecoration(border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Stop Loger Request",
                            style: TextStyle(color: Colors.black87, fontSize: 15),
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
                      Row(

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
                      SizedBox(height: 15),
                      Text("    Do you want to stop Logger ?"),
                      Row(
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
                                value.doSomething(buildBlank(context));

                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

              ),
            ],
          );
        }
      );


}
