import 'package:flutter/material.dart';

void main() => runApp(HorizontalList());

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          // Passing in a horizontal scrollDirection overrides the default vertical direction.
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 170.0,
                color: Colors.orange,
              ),
              Container(
                width: 160.0,
                color: Colors.redAccent,
              ),
              Container(
                width: 160.0,
                color: Colors.lightGreen,
              ),
              Container(
                width: 140.0,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
