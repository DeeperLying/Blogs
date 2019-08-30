import 'package:flutter/material.dart';
import 'index/index.dart';
import 'home/all/index.dart';
import 'home/game/index.dart';
import 'home/peripheral/index.dart';
import 'home/recommend/index.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final Map<String, WidgetBuilder> _routes = {
    '/': (context) => MyappTrue(),
    'HomeAll': (context) => HomeAll(),
    'HomeGame': (context) => HomeGame(),
    'HomePeripheral': (context) => HomePeripheral(),
    'HomeRecommend': (context) => HomeRecommend(),
  };

  Route _routeGenerator(RouteSettings settings) {
    // 路由监控 但为起作用
    WidgetBuilder builder;
    print('-');
    final String name = settings.name;
    final Function pageBuilder = this._routes[name];
    if (pageBuilder != null) {
      if (settings.arguments != null) {}
    }
  }
    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: 'Startup Name Generator',
        routes: _routes,
        theme: new ThemeData(
          primaryColor: Colors.white,
        ),
        onGenerateRoute: _routeGenerator,
        // home: new Myapp(),
      );
    }
}
























