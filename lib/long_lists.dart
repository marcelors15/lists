import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LongLists());
}

class LongLists extends StatelessWidget {
  LongLists({Key key}) : super(key: key);

  // You need a data source. For example, your data source might be a
  // list of messages, search results or products in a store. Most of the time,
  // this data comes from the internet or a database.

  // For this example, generate a list of 10,000 Strings using the List.generate constructor.
  final List<String> items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // To display the list of strings, render each String as a widget using ListView.builder().
        // ListView.builder() constructor creates items as they’re scrolled onto the screen.
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}',
                  style: TextStyle(fontSize: 16, fontFamily: 'RobotoMono')),
              leading: Text('${items[index]}',
                  style: TextStyle(fontSize: 20, fontFamily: 'RobotoMono')),
            );
          },
        ),
      ),
    );
  }
}
