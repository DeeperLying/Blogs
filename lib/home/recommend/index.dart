import 'package:flutter/material.dart';

class HomeRecommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Text('-'),
          new Text('3'),
          new Container(
            width: 100,
            color: Colors.blue
          )
        ],
      ),
    );
  }
}