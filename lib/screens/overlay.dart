import 'package:flutter/material.dart';
class OverlayWiget extends StatefulWidget {
  const OverlayWiget({Key? key}) : super(key: key);
  @override
  State<OverlayWiget> createState() => _OverlayWigetState();
}
class _OverlayWigetState extends State<OverlayWiget> {
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
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
                          color: Color(0xff0a2145),
                        ),
                        SizedBox(width: 2.0),
                        Text(
                          "Overlay Graph Window",
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        ),
                      ],
                    ),
                    Container(
                      height: 25,
                      color: Colors.red,

                      child: FittedBox(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            size: 25,color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: Size.height/1,
                  width: Size.width,

                  decoration: BoxDecoration(
                      color: Colors.white,
                    border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Overlay Graph",style: TextStyle(
                          fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15
                        ),),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 50,right: 50,top: 20),
                        child: Container(
                          height: Size.height/1.5,

                          decoration: BoxDecoration(
                            border: Border.all(  color: Colors.black38,),
                            color: Color(0xffd6d4d4)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
