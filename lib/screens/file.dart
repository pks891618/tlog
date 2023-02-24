// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:menu_bar/menu_bar.dart';
// import '../custom_widgets/battery_alert.dart';
// import '../custom_widgets/configure_data.dart';
// import '../custom_widgets/current_reading.dart';
// import '../custom_widgets/configure_device.dart';
// import '../custom_widgets/stop_logging.dart';
//
//
// List<BarButton> menuBarButtons(BuildContext context) {
//
//
//   return [
//     BarButton(
//       text: Container(
//         height: 35,
//         width: 150,
//         color: Color(0xff0a49d1),
//         child: Center(
//           child: Text(
//             'File',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//       submenu: SubMenu(
//         menuItems: [
//           MenuButton(
//             onTap: () {},
//             icon: Icon(
//               Icons.folder,
//               size: 13,
//               color: Color(0xfff7f54d),
//             ),
//             text: Text("Open",
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xff1730bd),
//                 )),
//             shortcutText: 'Ctrl+O',
//           ),
//           MenuButton(
//             onTap: () {},
//             icon: Icon(
//               Icons.folder,
//               size: 13,
//               color: Color(0xfff7f54d),
//             ),
//             text: Text("Open - Start date",
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xff1730bd),
//                 )),
//             //shortcutText: 'Ctrl+O',
//           ),
//           MenuButton(
//             onTap: () {},
//             text: Text("      Close",
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xff1730bd),
//                 )),
//           ),
//           MenuButton(
//             onTap: () {},
//             icon: Icon(
//               Icons.save,
//               size: 13,
//               color: Color(0xffbd8e17),
//             ),
//             text: Text('Save',
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xff1730bd),
//                 )),
//             shortcutText: 'Ctrl+S',
//           ),
//           MenuButton(
//             onTap: () {},
//             icon: Icon(
//               Icons.save,
//               size: 13,
//               color: Color(0xffbd8e17),
//             ),
//             text: Text('Save as....',
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xff1730bd),
//                 )),
//             //shortcutText: 'Ctrl+Shift+S',
//           ),
//           MenuButton(
//             onTap: () {},
//             icon: Icon(
//               Icons.print,
//               size: 13,
//               color: Color(0xff1772bd),
//             ),
//             text: Text("Print",
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xff1730bd),
//                 )),
//             shortcutText: 'Ctrl+P',
//           ),
//           MenuDivider(),
//           MenuButton(
//             text: const Text('Expot To',
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xff1730bd),
//                 )),
//             onTap: () {},
//             // submenu: SubMenu(
//             //   menuItems: [],
//             // ),
//           ),
//           MenuDivider(),
//           MenuButton(
//             onTap: () {},
//             // shortcutText: 'Ctrl+Q',
//             text: const Text('Exit',
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xff1730bd),
//                 )),
//           ),
//         ],
//       ),
//     ),
//     BarButton(
//       text: Container(
//         height: 35,
//         width: 150,
//         color: Color(0xff0a49d1),
//         child: Center(
//           child: const Text(
//             'Logger',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//       submenu: SubMenu(
//         menuItems: [
//           MenuButton(
//             onTap: () {
//               //showDeviceAlert(context);
//             },
//             text: Column(
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       //  color: Color(0xff038207),
//                         child: FittedBox(
//                             child: Icon(Icons.wifi_protected_setup,
//                               size: 15, color: Color(0xff28bf2d),
//                             ),
//                         )
//                     ),
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     GestureDetector(
//                         onTap: () {
//
//                         },
//                         child: Text(
//                           'Connect',
//                           style:
//                           TextStyle(color: Color(0xff0a49d1), fontSize: 12),
//                         )),
//                   ],
//                 ),
//               ],
//             ),
//             //shortcutText: 'Ctrl+Z',
//           ),
//
//
//           MenuDivider(indent: 15),
//           MenuButton(
//             onTap: () {
//               configureDevice(context);
//             },
//             text: Column(
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                         color: Color(0xff038207),
//                         child: FittedBox(
//                             child: Icon(
//                           Icons.arrow_forward,
//                           size: 15,
//                           color: Colors.white,
//                         ))),
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     GestureDetector(
//                         onTap: () {
//                           configureDevice(context);
//                         },
//                         child: Text(
//                           'Configure Device',
//                           style:
//                               TextStyle(color: Color(0xff0a49d1), fontSize: 12),
//                         )),
//                   ],
//                 ),
//               ],
//             ),
//             //shortcutText: 'Ctrl+Z',
//           ),
//           MenuButton(
//             onTap: () {},
//             text: Column(
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       color: Color(0xfff74623),
//                       child: FittedBox(
//                         child: Icon(
//                           Icons.keyboard_arrow_down_rounded,
//                           size: 15,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     Container(
//                         child: Text(
//                       'Offload Data',
//                       style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),
//                     )),
//                   ],
//                 ),
//               ],
//             ),
//             //shortcutText: 'Ctrl+Z',
//           ),
//           MenuButton(
//             onTap: () {},
//             text: Column(
//               children: [
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: 15.0,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         stopLoggingAlert(context);
//                       },
//                       child: Container(
//                           child: Text(
//                         '   Stop Logging',
//                         style:
//                             TextStyle(color: Color(0xff0a49d1), fontSize: 12),
//                       )),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             //shortcutText: 'Ctrl+Z',
//           ),
//           MenuDivider(indent: 15),
//           MenuButton(
//             onTap: () {},
//             text: Column(
//               children: [
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: 15.0,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                        showConfiguredata(context);
//                       },
//                       child: Container(
//                           child: Text(
//                         '   Show Configured Data',
//                         style:
//                             TextStyle(color: Color(0xff0a49d1), fontSize: 12),
//                       )),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             //shortcutText: 'Ctrl+Z',
//           ),
//           MenuButton(
//             onTap: () {},
//             text: Column(
//               children: [
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.battery_alert_outlined,
//                       size: 15,
//                       color: Color(0xff038207),
//                     ),
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     GestureDetector(
//                       onTap: (){
//                         batteryAlert(context);
//                       },
//                       child: Container(
//                           child: Text(
//                         'Show battery voltage',
//                         style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),
//                       )),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             //shortcutText: 'Ctrl+Z',
//           ),
//           MenuButton(
//             onTap: () {},
//             text: Column(
//               children: [
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: 15.0,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         showCurrentReading(context);
//                       },
//                       child: Container(
//                           child: Text(
//                         '   Show Current Reading',
//                         style:
//                             TextStyle(color: Color(0xff0a49d1), fontSize: 12),
//                       )),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             //shortcutText: 'Ctrl+Z',
//           ),
//         ],
//       ),
//     ),
//
//     BarButton(
//       text: Container(
//         height: 35,
//         width: 100,
//         color: Color(0xff0a49d1),
//         child: Center(
//           child: const Text(
//             'View',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//       submenu: SubMenu(
//         menuItems: [
//           MenuButton(
//             onTap: () {},
//             text: const Text('   Summary',
//               style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),
//           ),
//           MenuButton(
//             onTap: () {},
//             text: Row(
//
//
//               children: [
//                 Icon(
//                   Icons.auto_graph_outlined,
//                   size: 12,
//                   color: Colors.red,
//                 ),
//                 SizedBox(width: 8.0,),
//                 TextButton(
//                   child:Text(
//                   'Statical',
//                   style: TextStyle(color: Color(0xff0a49d1), fontSize: 12)), onPressed: () {
//
//
//
//
//
//
//                 },
//                 ),
//               ],
//             ),
//           ),
//           const MenuDivider(),
//           MenuButton(
//             onTap: () {},
//             text: const Text('Table + Graph',
//               style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),
//           ),
//           MenuButton(
//             onTap: () {},
//             text: Row(
//               children: [
//                 Icon(
//                   Icons.table_chart,
//                   size: 12,
//                   color: Colors.green,
//                 ),
//                 SizedBox(width: 8.0,),
//                 Text(
//                   'Graph',
//                   style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//           const MenuDivider(),
//           MenuButton(
//             onTap: () {},
//             text: Row(
//               children: [
//                 Icon(
//                   Icons.table_chart,
//                   size: 12,
//                   color: Colors.black,
//                 ),
//                 SizedBox(width: 8.0,),
//                 Text(
//                   'Table',
//                   style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//           const MenuDivider(),
//           MenuButton(
//             onTap: () {},
//             text: Row(
//               children: [
//                 Icon(
//                   Icons.table_chart,
//                   size: 12,
//                   color: Colors.red,
//                 ),
//                 SizedBox(width: 8.0,),
//                 Text(
//                   'Overlay',
//                   style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//           MenuButton(
//             text: const Text('Edit Graph',
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xff1730bd),
//                 )),
//             onTap: () {},
//             submenu: SubMenu(
//               menuItems: [
//                 MenuButton(onTap: (){}, text: Text("Add Notes",
//                   style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),))
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//     BarButton(
//       text: Container(
//         height: 35,
//         width: 150,
//         color: Color(0xff0a49d1),
//         child: Center(
//           child: const Text(
//             'Options',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//       submenu: SubMenu(
//         menuItems: [
//           MenuButton(
//             onTap: () {},
//             text: Text('Communication', style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),
//
//
//           ),
//           MenuButton(
//             onTap: () {},
//             text:  Text('Temprature Scale  C to F', style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),
//
//
//           ),
//
//
//
//
//         ],
//       ),
//     ),
//     BarButton(
//       text: Container(
//         height: 35,
//         width: 150,
//         color: Color(0xff0a49d1),
//         child: Center(
//           child: const Text(
//             'Help',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//       submenu: SubMenu(
//         menuItems: [
//           MenuButton(
//             onTap: () {},
//             text:  Text('Quick Guide pdf', style: TextStyle(color: Color(0xff0a49d1), fontSize: 12),),
//
//
//           ),
//
//
//         ],
//       ),
//     ),
//   ];
// }
