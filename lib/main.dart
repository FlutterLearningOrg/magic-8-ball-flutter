import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: AskAnything(),
      ),
    ),
  );
}

class AskAnything extends StatefulWidget {
  @override
  _AskAnythingState createState() => _AskAnythingState();
}

class _AskAnythingState extends State<AskAnything> {
  int num = 3;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  num = Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$num.png'),
            ),
          )
        ],
      ),
    );
  }
}

