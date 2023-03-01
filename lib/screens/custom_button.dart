import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackArrowButton extends StatelessWidget {
  final Widget child;
  final GestureTapCallback onPressed;

  BackArrowButton({required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: OutlinedButton(

        style: OutlinedButton.styleFrom(

          textStyle: TextStyle(
              fontSize: 11.0,
              color: Colors.black

          ),

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero)
            )
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

        onPressed: onPressed, child: child,


      ),
    );
  }
}