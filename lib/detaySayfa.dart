

import 'package:flutter/material.dart';

class detaySayfa extends StatefulWidget {

String ulke;


detaySayfa({required this.ulke});

  @override
  State<detaySayfa> createState() => _detaySayfaState();
}

class _detaySayfaState extends State<detaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: Center(
          child: Text(widget.ulke,style: TextStyle(color: Colors.red,fontSize: 30),),
        ),


    );
  }
}
