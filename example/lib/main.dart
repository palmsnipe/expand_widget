import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expand Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expand Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    'Text expand',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 4),
                  TextExpand(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    'Widget expand',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 4),
                  RowExpand(Column(
                    children: <Widget>[
                      Text('Hola'),
                      Text('Hello'),
                      Text('Hallo'),
                    ],
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}