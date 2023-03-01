import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tlog/screens/custom_menu.dart';

import 'models/anywidget.dart';

Widget fileButtons(BuildContext context) {
  return Consumer<MyModel>(
    builder: (context, value, child) {
      return SizedBox(
        height: 500,
        child: GestureDetector(
          onTap: () {
            if (value.isExpanded == false) {
              value.setExpanded(true);
            } else {
              value.setExpanded(false);
            }
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds:0),
            height: value.height,
            //width:200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            width: MediaQuery.of(context).size.width / 8,
            child: Column(
              children: [
                Container(
                  width: 150,
                  color: Color(0xff1730bd),
                  child: GestureDetector(
                    onTap: () {
                      if (value.isExpanded == false) {
                        value.setExpanded(true);
                        //value.height = 500;
                      } else {
                        value.setExpanded(false);
                      }
                    },
                    child: Center(
                      child: Text(
                        "File",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                value.isExpanded == true
                    ? Expanded(
                  child: ListView(
                    children: [
                      CustomMenu(
                        onPressed: () {},
                        iconsbutton: Icon(
                          Icons.folder,
                          size: 13,
                          color: Color(0xfff7f54d),
                        ),
                        texts: Text(
                          "Open",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff1730bd),
                          ),
                        ),
                        child: Text("Ctrl+O"),
                      ),
                      CustomMenu(
                        onPressed: () {},
                        iconsbutton: Icon(
                          Icons.folder,
                          size: 13,
                          color: Color(0xfff7f54d),
                        ),
                        texts: Text("Open - Start date",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        child: Text(""),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 16,),
                          Text("Close",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff1730bd),
                              )),
                        ],
                      ),
                      CustomMenu(
                        onPressed: () {},
                        iconsbutton: Icon(
                          Icons.save,
                          size: 13,
                          color: Color(0xffbd8e17),
                        ),
                        texts: Text("Save",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        child: Text("Ctrl+O"),
                      ),
                      CustomMenu(
                        onPressed: () {},
                        iconsbutton: Icon(
                          Icons.save,
                          size: 13,
                          color: Color(0xffbd8e17),
                        ),
                        texts: Text("Save As...",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        child: Text("Ctrl+S"),
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.4),
                      ),
                      CustomMenu(
                        onPressed: () {},
                        iconsbutton: Icon(
                          Icons.print,
                          size: 13,
                          color: Color(0xff1772bd),
                        ),
                        texts: Text("Print",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        child: Text("Ctrl+P"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Export To ",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff1730bd),
                              )),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                          ),
                          // Text("Ctrl+O")
                        ],
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.4),
                      ),
                      Text(
                        "Exit",
                        style: TextStyle(
                          color: Color(0xff1730bd),
                        ),
                      )
                    ],
                  ),
                )
                    : SizedBox.shrink(),
              ],
            ),
          ),
        ),
      );
    },
  );



}