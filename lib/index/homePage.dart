import 'package:flutter/material.dart';
import '../home/all/index.dart';
import '../home/game/index.dart';
import '../home/peripheral/index.dart';
import '../home/recommend/index.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TabBarDemoState();
  }
}

class TabBarDemoState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  final list = <Widget>[
    HomeRecommend(),
    HomeAll(),
    HomeGame(),
    HomePeripheral(),
  ];
  final tabs = <Widget>[
    new Tab(text: '推荐', icon: new Icon(Icons.map)),
    new Tab(text: '全部', icon: new Icon(Icons.print)),
    new Tab(text: '比赛', icon: new Icon(Icons.access_alarm)),
    new Tab(text: '装备', icon: new Icon(Icons.important_devices)),
  ];
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('首页'),
        bottom: new TabBar(
          tabs: tabs,
          controller: _tabController,
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: list,
      ),
    );
  }
}