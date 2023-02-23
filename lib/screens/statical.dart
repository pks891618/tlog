// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart' hide MenuBar hide MenuStyle;
// import 'package:menu_bar/menu_bar.dart';
//
// import '../custom_class/custom_widget_class.dart';
// import 'file.dart';
//
// class Statical extends StatefulWidget {
//   const Statical({Key? key}) : super(key: key);
//
//   @override
//   State<Statical> createState() => _StaticalState();
// }
//
// class _StaticalState extends State<Statical> {
//   List<Staticals> allstaticals = [
//     Staticals(date: "", tempreture: "")
//   ];
//   @override
//   Widget build(BuildContext context) {
//     var Size = MediaQuery.of(context).size;
//     return Scaffold(
//       body:
//       Stack(
//         children: [
//           MenuBar(
//             menuStyle: MenuStyle(backgroundColor: Colors.white),
//             barButtons: menuBarButtons(context),
//             barStyle: BarStyle(gap: 10, height: 25, backgroundColor: Colors.white),
//
//
//             child:
//             Container(
//               color: Color(0xffe6f9fc),
//               child: Column(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.all(5.0),
//                     height: 38,
//                     width: Size.width,
//                     decoration: BoxDecoration(
//                         border:
//                         Border.all(width: 2, color: Colors.black.withOpacity(0.4))),
//                     child: Row(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4.0),
//                           ),
//                           child: FittedBox(
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.folder_copy_outlined,
//                                   size: 32,
//                                   color: Colors.amber,
//                                 )),
//                           ),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4.0),
//                           ),
//                           child: FittedBox(
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(Icons.save,
//                                     size: 30, color: Color(0xffa68303))),
//                           ),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4.0),
//                           ),
//                           //width: 30,
//                           child: FittedBox(
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(Icons.wifi_protected_setup,
//                                     size: 32, color: Color(0xff28bf2d))),
//                           ),
//                         ),
//                         Container(
//                           height: 25,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4.0),
//                           ),
//                           width: 30,
//                           child: FittedBox(
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.table_chart_outlined,
//                                   size: 25,
//                                   color: Colors.black,
//                                 )),
//                           ),
//                         ),
//                         Container(
//                             height: 20,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(4.0),
//                               color: Color(0xff038207),
//                             ),
//                             width: 20,
//                             child: FittedBox(
//                                 child: IconButton(
//                                     onPressed: () {},
//                                     icon: Icon(
//                                       Icons.arrow_forward,
//                                       size: 25,
//                                       color: Colors.white,
//                                     )))),
//                         SizedBox(width: 10),
//                         Container(
//                             height: 20,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(4.0),
//                               color: Color(0xfff74623),
//                             ),
//                             width: 20,
//                             child: FittedBox(
//                                 child: IconButton(
//                                     onPressed: () {},
//                                     icon: Icon(Icons.keyboard_arrow_down_rounded,
//                                         size: 25, color: Colors.white)))),
//                         Container(
//                           height: 25,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4.0),
//                           ),
//                           width: 30,
//                           child: FittedBox(
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.table_chart_outlined,
//                                   size: 25,
//                                   color: Colors.black,
//                                 )),
//                           ),
//                         ),
//                         Container(
//                           height: 25,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4.0),
//                           ),
//                           width: 30,
//                           child: FittedBox(
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.auto_graph_outlined,
//                                   size: 25,
//                                   color: Colors.black,
//                                 )),
//                           ),
//                         ),
//                         Container(
//                           height: 25,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4.0),
//                           ),
//                           width: 30,
//                           child: FittedBox(
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.table_chart,
//                                   size: 25,
//                                   color: Colors.black,
//                                 )),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 25,
//                     child:
//                     Row(
//                       children: [
//                         Text("Logger_Data_.inn",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
//                         Padding(
//                           padding: const EdgeInsets.all(5.0),
//                           child: Container(
//                               height: 20,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Color(0xff939995)),
//                                 //borderRadius: BorderRadius.circular(4.0),
//                                 color: Color(0xffcfd4d1),
//                               ),
//                               width: 15,
//                               child: FittedBox(
//                                   child: TextButton(
//                                       onPressed: () {},
//                                       child: Text("T",style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),)
//                                   ))),
//                         ),
//                         VerticalDivider(color: Colors.black87,thickness:1,),
//
//
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 20,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Title : 461 STM21",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
//
//
//                         VerticalDivider(color: Colors.black87,thickness:1,),
//                         Text("Serial Number: 461210057",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
//                         VerticalDivider(color: Colors.black87,thickness:1,),
//                         Text("Logger Interval : 00Hr 30Min 00Sec",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
//
//
//
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 20,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Offloaded Time  : 17/12/22 06:52:05Pm",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
//
//
//                         VerticalDivider(color: Colors.black87,thickness:1,),
//                         Text("Total Logged Points : 246",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
//
//
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(5.0),
//                     child: Container(
//                       width: Size.width,
//                       //height: Size.height/,
//
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                         border: Border.all(color: Color(0xffb3b5b4),width:2)
//                       ),
//                       child: Column(
//                           children: [
//                             ...List.generate(11, (index) =>
//                                 Column(
//                               //    mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text("12/12/12",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
//                                     Divider(color: Colors.black,thickness: 1,)
//                                   ],
//                                 )
//                             )
//
//                           ],
//                         )
//
//                     ),
//                   )
//
//
//                 ],
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomRight,
//             child: Container(
//               height: 30,
//               color: Colors.red,
//             ),
//           )
//         ],
//       ),
//
//     );
//   }
// }
