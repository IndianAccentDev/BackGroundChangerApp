import 'package:flutter/material.dart';
import 'dart:math';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  var colors = [
    Colors.amber,
    Colors.red,
    Colors.orange,
    Colors.pink,
    Colors.blue,
    Colors.blueGrey,
    Colors.purple,
    Colors.lightGreen,
  ];

  var CurrentColor = Colors.white;

  SetRandomColor(){

    var rnd = Random().nextInt(colors.length);
    setState(() {
      CurrentColor = colors[rnd];
    });
  }

  Widget build(BuildContext context) {
    return Container(
      color: CurrentColor,
      child: Center(
        child: RaisedButton(
          color: Colors.black,
          splashColor: Colors.teal[400],
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text("Change It!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          onPressed: SetRandomColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
          ),
        ),
      ),
    );
  }
}