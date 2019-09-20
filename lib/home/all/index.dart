import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeAll extends StatefulWidget {
  @override
  _HomeAllState createState() => _HomeAllState();
}

class _HomeAllState extends State<HomeAll> {
  bool isShowList = false;
  List<Widget> list = [
    new Container(
      height: 150,
      color: Colors.red,
      child: new Text('=----'),
    ),
    new Container(
      height: 150,
      color: Colors.red,
      child: new Text('=----'),
    ),
    new Container(
      height: 150,
      color: Colors.red,
      child: new Text('=----'),
    ),
    new Container(
      height: 150,
      color: Colors.red,
      child: new Text('=----'),
    ),
    new Container(
      height: 150,
      color: Colors.red,
      child: new Text('=----'),
    ),
    new Container(
      height: 150,
      color: Colors.red,
      child: new Text('=----'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new RefreshIndicator(onRefresh: _onRefresh,
        child: new ListView(
          children: isShowList ? list : [],
        ),
        )
    );
  }

  Future _onRefresh() async {
    print('===');
    await Future.delayed(Duration(seconds: 3), (){
      setState(() {
        this.isShowList = true;
      });
    });
  }
}
