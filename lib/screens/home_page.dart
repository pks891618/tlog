import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide MenuBar hide MenuStyle;
import 'package:menu_bar/menu_bar.dart';
import 'package:provider/provider.dart';
import 'package:tlog/screens/statical.dart';
import 'package:tlog/screens/table_graph.dart';
import '../custom_widgets/battery_alert.dart';
import '../custom_widgets/configure_data.dart';
import '../custom_widgets/configure_device.dart';
import '../custom_widgets/current_reading.dart';
import '../custom_widgets/stop_logging.dart';
import '../models/anywidget.dart';
import 'add_notes.dart';
import 'all_graph.dart';
import 'all_tables.dart';
import 'overlay.dart';

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
      body: Consumer<MyModel>(
        builder: ( context, value,  child) {
        return Stack(
          children: [
            MenuBar(
              barStyle:
              BarStyle(gap: 10, height: 25, backgroundColor: Colors.white),
              menuStyle: MenuStyle(backgroundColor: Colors.white),
              barButtons: [
                BarButton(
                  text: Container(
                    height: 35,
                    width: 150,
                    color: Color(0xff0a49d1),
                    child: Center(
                      child: Text(
                        'File',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  submenu: SubMenu(
                    menuItems: [
                      MenuButton(
                        onTap: () {},
                        icon: Icon(
                          Icons.folder,
                          size: 13,
                          color: Color(0xfff7f54d),
                        ),
                        text: Text("Open",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        shortcutText: 'Ctrl+O',
                      ),
                      MenuButton(
                        onTap: () {},
                        icon: Icon(
                          Icons.folder,
                          size: 13,
                          color: Color(0xfff7f54d),
                        ),
                        text: Text("Open - Start date",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        //shortcutText: 'Ctrl+O',
                      ),
                      MenuButton(
                        onTap: () {},
                        text: Text("      Close",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                      ),
                      MenuButton(
                        onTap: () {},
                        icon: Icon(
                          Icons.save,
                          size: 13,
                          color: Color(0xffbd8e17),
                        ),
                        text: Text('Save',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        shortcutText: 'Ctrl+S',
                      ),
                      MenuButton(
                        onTap: () {},
                        icon: Icon(
                          Icons.save,
                          size: 13,
                          color: Color(0xffbd8e17),
                        ),
                        text: Text('Save as....',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        //shortcutText: 'Ctrl+Shift+S',
                      ),
                      MenuButton(
                        onTap: () {},
                        icon: Icon(
                          Icons.print,
                          size: 13,
                          color: Color(0xff1772bd),
                        ),
                        text: Text("Print",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        shortcutText: 'Ctrl+P',
                      ),
                      MenuDivider(),
                      MenuButton(
                        text: const Text('Expot To',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        onTap: () {},
                        // submenu: SubMenu(
                        //   menuItems: [],
                        // ),
                      ),
                      MenuDivider(),
                      MenuButton(
                        onTap: () {},
                        // shortcutText: 'Ctrl+Q',
                        text: const Text('Exit',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                      ),
                    ],
                  ),
                ),
                BarButton(
                  text: Container(
                    height: 35,
                    width: 150,
                    color: Color(0xff0a49d1),
                    child: Center(
                      child:  Text(
                        'Logger',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  submenu: SubMenu(
                    menuItems: [
                      MenuButton(
                        onTap: () {
                          //showDeviceAlert(context);
                        },
                        text: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  //  color: Color(0xff038207),
                                    child: FittedBox(
                                      child: Icon(Icons.wifi_protected_setup,
                                        size: 15, color: Color(0xff28bf2d),
                                      ),
                                    )
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                GestureDetector(
                                    onTap: () {

                                    },
                                    child: Text(
                                      'Connect',
                                      style:
                                      TextStyle(color: Color(0xff0a49d1), fontSize: 12),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        //shortcutText: 'Ctrl+Z',
                      ),


                      MenuDivider(indent: 15),
                      MenuButton(
                        onTap: () {
                          configureDevice(context);
                        },
                        text: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    color: Color(0xff038207),
                                    child: FittedBox(
                                        child: Icon(
                                          Icons.arrow_forward,
                                          size: 15,
                                          color: Colors.white,
                                        ))),
                                SizedBox(
                                  width: 10.0,
                                ),
                                GestureDetector(
                                    onTap: () {
                                     value.doSomething(configureDevice(context)) ;
                                    },
                                    child: Text(
                                      'Configure Device',
                                      style:
                                      TextStyle(color: Color(0xff0a49d1), fontSize: 12),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        //shortcutText: 'Ctrl+Z',
                      ),
                      MenuButton(
                        onTap: () {},
                        text: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  color: Color(0xfff74623),
                                  child: FittedBox(
                                    child: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                    child: Text(
                                      'Offload Data',
                                      style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        //shortcutText: 'Ctrl+Z',
                      ),
                      MenuButton(
                        onTap: () {},
                        text: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    value.doSomething(stopLoggingAlert(context));
                                  },
                                  child: Container(
                                      child: Text(
                                        '   Stop Logging',
                                        style:
                                        TextStyle(color: Color(0xff0a49d1), fontSize: 12),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //shortcutText: 'Ctrl+Z',
                      ),
                      MenuDivider(indent: 15),
                      MenuButton(
                        onTap: () {},
                        text: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    value.doSomething(showConfiguredata(context));
                                  },
                                  child: Container(
                                      child: Text(
                                        '   Show Configured Data',
                                        style:
                                        TextStyle(color: Color(0xff0a49d1), fontSize: 12),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //shortcutText: 'Ctrl+Z',
                      ),
                      MenuButton(
                        onTap: () {},
                        text: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.battery_alert_outlined,
                                  size: 15,
                                  color: Color(0xff038207),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    batteryAlert(context);
                                  },
                                  child: Container(
                                      child: Text(
                                        'Show battery voltage',
                                        style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //shortcutText: 'Ctrl+Z',
                      ),
                      MenuButton(
                        onTap: () {},
                        text: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    value.doSomething(showCurrentReading(context));
                                  },
                                  child: Container(
                                      child: Text(
                                        '   Show Current Reading',
                                        style:
                                        TextStyle(color: Color(0xff0a49d1), fontSize: 12),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //shortcutText: 'Ctrl+Z',
                      ),
                    ],
                  ),
                ),
                BarButton(
                  text: Container(
                    height: 35,
                    width: 100,
                    color: Color(0xff0a49d1),
                    child: Center(
                      child: const Text(
                        'View',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  submenu: SubMenu(
                    menuItems: [
                      MenuButton(
                        onTap: () {},
                        text: const Text('   Summary',
                          style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),
                      ),
                      MenuButton(
                        onTap: () {},
                        text: Row(
                          children: [
                            Icon(
                              Icons.auto_graph_outlined,
                              size: 12,
                              color: Colors.red,
                            ),
                            SizedBox(width: 8.0,),
                            TextButton(
                              child:Text(
                                  'Statical',
                                  style: TextStyle(color: Color(0xff0a49d1), fontSize: 12)),
                              onPressed: () {
                                value.doSomething(buildStatical(context));
                                // if (value.staticalExpand == false) {
                                //   value.tablegraphExpanded == true
                                //       ? value.setTableGraphExpanded(false)
                                //       : null;
                                //   value.setStaticalExpanded(true);
                                // } else {
                                //   value.setStaticalExpanded(false);
                                // }
                                },
                            ),
                          ],
                        ),
                      ),
                      const MenuDivider(),
                      MenuButton(
                        onTap: () {},
                        text:  TextButton(
                          onPressed: () {
                            value.doSomething(buildGraphTable(context));
                            },
                          child: Text('Table + Graph',
                            style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),
                        ),
                      ),
                      MenuButton(
                        onTap: () {},
                        text: Row(
                          children: [
                            Icon(
                              Icons.table_chart,
                              size: 12,
                              color: Colors.green,
                            ),
                            SizedBox(width: 8.0,),
                            TextButton(
                              onPressed: () {  value.doSomething(buildGraph(context)); },
                              child: Text(
                                'Graph',
                                style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const MenuDivider(),
                      MenuButton(
                        onTap: () {},
                        text: Row(
                          children: [
                            Icon(
                              Icons.table_chart,
                              size: 12,
                              color: Colors.black,
                            ),
                            SizedBox(width: 8.0,),
                            TextButton(
                              onPressed: () {
                                value.doSomething(buildTable(context));

                              },
                              child: Text(
                                'Table',
                                style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const MenuDivider(),
                      MenuButton(
                        onTap: () {},
                        text: Row(
                          children: [
                            Icon(
                              Icons.table_chart,
                              size: 12,
                              color: Colors.red,
                            ),
                            SizedBox(width: 8.0,),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => OverlayWiget()),
                                );

                              },
                              child: Text(
                                'Overlay',
                                style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      MenuButton(
                        text: const Text('Edit Graph',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1730bd),
                            )),
                        onTap: () {},
                        submenu: SubMenu(
                          menuItems: [
                            MenuButton(onTap: (){}, text: TextButton(
                              onPressed: () {   value.doSomething(addNotes(context)); },
                              child: Text("Add Notes",
                                style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                BarButton(
                  text: Container(
                    height: 35,
                    width: 150,
                    color: Color(0xff0a49d1),
                    child: Center(
                      child: const Text(
                        'Options',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  submenu: SubMenu(
                    menuItems: [
                      MenuButton(
                        onTap: () {},
                        text: Text('Communication', style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),


                      ),
                      MenuButton(
                        onTap: () {},
                        text:  Text('Temprature Scale  C to F', style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),


                      ),




                    ],
                  ),
                ),
                BarButton(
                  text: Container(
                    height: 35,
                    width: 150,
                    color: Color(0xff0a49d1),
                    child: Center(
                      child: const Text(
                        'Help',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  submenu: SubMenu(
                    menuItems: [
                      MenuButton(
                        onTap: () {},
                        text:  Text('Quick Guide pdf', style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),


                      ),


                    ],
                  ),
                ),
              ],
              child: Container(
                color: Colors.white,
               // color: Color(0xffe6f9fc),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      height: 38,
                      width: Size.width,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: Colors.black.withOpacity(0.4))),
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
                                      icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          size: 25,
                                          color: Colors.white)))),
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
                    ),
                     Container(child: value.someValue),





                    // value.staticalExpand == true  ?
                    // buildStatical(context) : value.tableExpanded == true ?
                    // buildTable(context) : SizedBox()
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Serial Number is displayed",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff0a49d1),
                      ),
                    ),
                    Text(
                      "COM Port : COM3",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff0a49d1),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffc0c0c2),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: Text(
                          "4612100057",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff0a49d1),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                //color: Colors.red,
              ),
            ),
          ],
        );
        },
    ));
  }
}
// class _HomePageState extends State<HomePage> {
//   double _height = 30.0;
//   bool _isExpanded = false;
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body:
//         GestureDetector(
//           onTap: () {
//             if (!_isExpanded) {
//               setState(() {
//                 _height = 500;
//                 _isExpanded = true;
//               });
//             } else {
//               setState(() {
//                 _height = 30;
//                 _isExpanded = false;
//               });
//             }
//
//
//           },
//           child: AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             height: _height,
//             //width:200,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 color: Colors.white
//
//             ),
//             width: MediaQuery
//                 .of(context)
//                 .size
//                 .width/8,
//             child: Column(
//               children: [
//                 Container(
//
//
//                   color: Color(0xff1730bd),
//                   padding: EdgeInsets.all(1.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       if (!_isExpanded) {
//                         setState(() {
//                           _height = 500;
//                           _isExpanded = true;
//                         });
//                       } else {
//                         setState(() {
//                           _height = 30;
//                           _isExpanded = false;
//                         });
//                       }
//
//
//                     },
//                     child: Center(child: Text('File',style: TextStyle(fontWeight: FontWeight.w700,
//                         fontSize: 15,color: Colors.white
//                     ),
//                     ),
//                     ),
//                   ),
//                 ),
//
//                 _isExpanded == true ?   Expanded(
//                   child:
//                   ListView(
//                     children: [
//                       Padding(
//                         padding:  EdgeInsets.all(8.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(child: Row(
//                                   children: [
//
//                                     Icon(Icons.folder,size : 13,color: Color(0xfff7f54d),),
//                                     SizedBox(width: 8.0),
//                                     Text("Open",style: TextStyle(fontSize: 12, color: Color(0xff1730bd),),),
//                                   ],
//                                 )),
//
//                                 Text("Ctrl+O",style: TextStyle(fontSize: 11),),
//
//                               ],
//                             ),
//
//                             Row(
//                               children: [
//                                 Container(
//                                   child: Row(
//                                     children: [
//                                       Icon(Icons.folder,size : 13,color: Color(0xfff7f54d),),
//                                       SizedBox(width: 8.0),
//                                       Text("Open - Start date",style: TextStyle(fontSize: 12, color: Color(0xff1730bd),)),
//
//                                     ],
//                                   ),
//                                 ),
//                                 //Text("Ctrl+O")
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 20),
//                               child: Text("Close",style: TextStyle(fontSize: 12, color: Color(0xff1730bd),)),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(
//                                   child: Row(
//                                     children: [
//                                       Icon(Icons.save,size : 13,color: Color(0xffbd8e17),),
//                                       SizedBox(width: 8.0),
//                                       Text("Save",style: TextStyle(fontSize: 12, color: Color(0xff1730bd),)),
//
//                                     ],
//                                   ),
//                                 ),
//                                 Text("Ctrl+s",style: TextStyle(fontSize: 11),)
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Container(
//                                   child: Row(
//                                     children: [
//                                       Icon(Icons.save,size : 13,color: Color(0xffbd8e17),),
//                                       SizedBox(width: 8.0),
//                                       Text("Save As...",style: TextStyle(fontSize: 12, color: Color(0xff1730bd),)),
//
//
//
//                                     ],
//                                   ),
//                                 ),
//                                 // Text("Ctrl+O")
//                               ],
//                             ),
//                             Divider(color: Colors.black.withOpacity(0.4),),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(
//                                   child: Row(
//                                     children: [
//                                       Icon(Icons.print,size : 13,color: Color(0xff1772bd),),
//                                       SizedBox(width: 8.0),
//                                       Text("Print",style: TextStyle(fontSize: 12, color: Color(0xff1730bd),)),
//
//
//
//                                     ],
//                                   ),
//                                 ),
//                                 Text("Ctrl+P",style: TextStyle(fontSize: 11),)
//                               ],
//                             ),
//                             Divider(color: Colors.black.withOpacity(0.4),),
//
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text("Export To ",style: TextStyle(fontSize: 12, color: Color(0xff1730bd),)),
//                                 Icon(Icons.arrow_forward_ios,size: 12,),
//                                 // Text("Ctrl+O")
//                               ],
//                             ),
//                             Divider(color: Colors.black.withOpacity(0.4),),
//                             Text("Exit",style: TextStyle(   color: Color(0xff1730bd),),)
//
//
//
//
//
//                           ],
//                         ),
//                       )
//
//
//                     ],
//                   ),
//                 ) : SizedBox.shrink(),
//
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
