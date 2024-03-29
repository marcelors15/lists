import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(FloatingBarList());

class FloatingBarList extends StatelessWidget {
  FloatingBarList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Floating App Bar';

    // The scrollable lists and widgets provided to the CustomScrollView are
    // known as slivers. There are several types of slivers, such as SliverList,
    // SliverGridList, and SliverAppBar.
    // In fact, the ListView and GridView widgets  use the SliverList
    // and SliverGrid widgets to implement scrolling.

    return MaterialApp(
      title: title,
      home: Scaffold(
        // No appbar provided to the Scaffold, only a body with a CustomScrollView.
        body: CustomScrollView(
          slivers: <Widget>[
            // Add the app bar to the CustomScrollView.
            SliverAppBar(
              // Provide a standard title.
              title: Text(title),

              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              floating: true,

              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace: Placeholder(),
              //flexibleSpace: Image.network('https://picsum.photos/250?image=9'),

              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 200,
            ),

            // Next, create a SliverList
            SliverList(
              // Use a delegate to build items as they're scrolled on screen,
              // just like the ListView.builder widget.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                (context, index) => ListTile(title: Text('Item # $index')),
                // Builds 1000 ListTiles
                childCount: 1000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
