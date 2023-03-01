import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  final Widget texts;
  final Icon iconsbutton;


  final GestureTapCallback onPressed;

  CustomMenu({required this.onPressed, required this.iconsbutton, required this.texts, required Text child});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(0),

          textStyle: TextStyle(
              fontSize: 11.0,
              color: Colors.black

          ),

          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero)
          ),
        side: BorderSide(color: Colors.white)
      ).copyWith(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered))
                return Color(0xffd0f2ed);
              return Color(0xffccc4c4);
            }),

        foregroundColor:MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered))
                return Colors.black;
              return Colors.black;
            }),
      ),

      onPressed: onPressed, child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        iconsbutton,


        texts

      ],
    ),




    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CustomMenu extends StatelessWidget {
//   final Widget child;
//   final Widget texts;
//   final Icon iconsbutton;
//   final GestureTapCallback onPressed;
//
//   CustomMenu({required this.onPressed, required this.iconsbutton, required this.texts, required this.child});
//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       style: OutlinedButton.styleFrom(
//           padding: EdgeInsets.all(0),
//
//           textStyle: TextStyle(
//               fontSize: 13.0,
//               color: Color(0xff1730bd)
//
//           ),
//
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.zero)
//           ),
//           side: BorderSide(color: Colors.white)
//       ).copyWith(
//         backgroundColor: MaterialStateProperty.resolveWith<Color>(
//                 (Set<MaterialState> states) {
//               if (states.contains(MaterialState.hovered))
//                 return Color(0xff699af5);
//               return Colors.white;
//             }),
//
//         foregroundColor:MaterialStateProperty.resolveWith<Color>(
//                 (Set<MaterialState> states) {
//               if (states.contains(MaterialState.hovered))
//                 return Colors.black;
//               return Colors.black;
//             }),
//       ),
//
//       onPressed: onPressed, child: Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//
//           Container(child: Row(
//             children: [
//               iconsbutton,
//               SizedBox(width: 5.0),
//               texts
//             ],
//
//           )
//           ),
//           child
//
//
//
//
//
//         ],
//       ),
//     ),
//
//
//
//
//     );
//   }
// }

class AddDevice{
  String? name;
  IconData icons;
  AddDevice({
    this.name,
    required this.icons
  });
}