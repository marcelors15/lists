import 'package:Lists/use_lists.dart';
import 'package:flutter/material.dart';

import 'different_types_items.dart';
import 'floating_app_bar_list.dart';
import 'grid_list.dart';
import 'horizontal_list.dart';
import 'long_lists.dart';

void main() {
  runApp(MaterialApp(
    title: 'Lists Flutter',
    home: HomeRoute(),
  ));
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists in Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Create a grid list'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (GridList())),
                );
              },
            ),
            RaisedButton(
              child: Text('Create a horizontal list'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (HorizontalList())),
                );
              },
            ),
            RaisedButton(
              child: Text('Create lists with different types of items'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => (ListsDifferentTypesItems(
                      items: List<ListItem>.generate(
                        1000,
                        (i) => i % 6 == 0
                            ? HeadingItem("Heading $i")
                            : MessageItem("Sender $i", "Message body $i"),
                      ),
                    )),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Place a floating app bar above a list'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (FloatingBarList())),
                );
              },
            ),
            RaisedButton(
              child: Text('Use Lists'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (UseLists())),
                );
              },
            ),
            RaisedButton(
              child: Text('Work with long lists'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (LongLists())),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
