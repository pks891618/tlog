import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/models/anywidget.dart';
import 'package:tlog/screens/custom_button.dart';
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
                  color: Color(0xfff0faf9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

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
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding:  EdgeInsets.only(left: 60,top: 8.0,bottom: 15.0),
                      child: Text("Do you want to stop Logger ?"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BackArrowButton(


                              child: Text("Yes"),
                              onPressed: () {
                                //showAlertDialogs(context);
                              },
                            ),

                        SizedBox(
                          width: 10.0,
                        ),
                                BackArrowButton(
                                  child: Text("No"),
                              onPressed: () {
                                value.doSomething(buildBlank(context));

                              },

                        ),
                      ],
                    )
                  ],
                ),

              ),
            ],
          );
        }
      );


}
