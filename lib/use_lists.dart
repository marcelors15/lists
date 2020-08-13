import 'package:flutter/material.dart';

void main() => runApp(UseLists());

class UseLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // Using the standard ListView constructor is perfect for lists that contain only a few items.
        // The built-in ListTile widget is a way to give items a visual structure.
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
