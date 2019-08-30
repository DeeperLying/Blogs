import 'package:flutter/material.dart';

class HomeRecommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        color: Colors.blue[50],
        child: Align(
          widthFactor: 4,
          heightFactor: 4,
          alignment: Alignment(1, -1),
          child: new Container(
            width: 30,
            height: 30,
            color: Colors.green
          ),
        ),
      )
    );
  }
}