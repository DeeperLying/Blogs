import 'package:flutter/material.dart';

class MatchPage extends StatelessWidget{
  final Map query = {
    'obj': 1,
    'name': 'user'
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text('赛事中心'),
      ),
      body: new Container(
          child: new FlatButton(
            onPressed: () {
              Navigator.push(context, 
                new MaterialPageRoute(builder: (context) => new SecondScreen())
              );
            },
            child: new Text('跳转'),
            color: Colors.blue,
          ),
          width: 50,
          height: 50,
          color: Colors.green,
        ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text('==='),
    );
  }
}