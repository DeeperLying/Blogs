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

class TabBarDemoState extends State<HomePage> with SingleTickerProviderStateMixin {  //with SingleTickerProviderStateMixin 用它实现动画效果
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

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: list.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget barSearch() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
              flex:1,
              child: new Text('赛事')
          ),
          new Expanded(
              flex: 1,
              child: new Container(
                  /*child: new Text(
                      '搜索赛事、比赛',
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color(0xFFDADADA),
                      )
                  ),*/
                  child: new Stack(
                    children: <Widget>[
                      new Positioned(
                        right: 10,
                        bottom: 10,
                          child: Container(
                            width: 24,
                            height: 24,
                            child:new Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 30,
                            )
                          )
                      ),
                      new Center(
                          child:new Text(
                              '搜索赛事、比赛',
                              style: TextStyle(
                                fontSize: 12,
                                color: const Color(0xFFDADADA),
                              )
                          )
                      )
                    ],
                  ),
                decoration: new BoxDecoration(
                  borderRadius: const BorderRadius.all(const Radius.circular(50.0)),
                  color: const Color(0xFFFAFAFA),
                ),
                height: 45,
              ),
          )
        ],
      ),
      height: 45,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: barSearch(),
        bottom: new TabBar(
          controller: _tabController,
          tabs: tabs,
          onTap: (index){
            print(index);
          },
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: list,
      ),
    );
  }
}