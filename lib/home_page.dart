import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide MenuBar hide MenuStyle;
import 'package:menu_bar/menu_bar.dart';
import 'package:tlog/file.dart';
import 'package:tlog/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {







  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
        body:
              MenuBar(
          menuStyle: MenuStyle(backgroundColor: Colors.white),
          barButtons: menuBarButtons(context),
          barStyle: BarStyle(gap: 10, height: 25, backgroundColor: Colors.white),
          child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    height: 38,
                    width: Size.width,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: Colors.black.withOpacity(0.4))),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: FittedBox(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.folder_copy_outlined,
                                  size: 32,
                                  color: Colors.amber,
                                )),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: FittedBox(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.save,
                                    size: 30, color: Color(0xffa68303))),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          //width: 30,
                          child: FittedBox(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.wifi_protected_setup,
                                    size: 32, color: Color(0xff28bf2d))),
                          ),
                        ),
                        Container(
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          width: 30,
                          child: FittedBox(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.table_chart_outlined,
                                  size: 25,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        Container(
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Color(0xff038207),
                            ),
                            width: 20,
                            child: FittedBox(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      size: 25,
                                      color: Colors.white,
                                    )))),
                        SizedBox(width: 10),
                        Container(
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Color(0xfff74623),
                            ),
                            width: 20,
                            child: FittedBox(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.keyboard_arrow_down_rounded,
                                        size: 25, color: Colors.white)))),
                        Container(
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          width: 30,
                          child: FittedBox(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.table_chart_outlined,
                                  size: 25,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        Container(
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          width: 30,
                          child: FittedBox(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.auto_graph_outlined,
                                  size: 25,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        Container(
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          width: 30,
                          child: FittedBox(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.table_chart,
                                  size: 25,
                                  color: Colors.black,
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
          ),
        ),


        );
  }
}
