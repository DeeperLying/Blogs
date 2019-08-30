import 'package:flutter/material.dart';
import '../index/homePage.dart'; // 首页
import '../match/index.dart';
import '../user/index.dart';

class MyappTrue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CreateStatefuleWidget();
  }
}

class CreateStatefuleWidget extends StatefulWidget { // 我继承一个动态组建库
  @override
  createState() => new _BottomNavigationWidgetState(); // 创建一个状态，用于控制动态组件的状态 setState()
}

class _BottomNavigationWidgetState extends State<CreateStatefuleWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _childrenPage = [
    HomePage(),
    MatchPage(),
    UserPage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: _childrenPage[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('赛事')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('账号'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
        type:BottomNavigationBarType.fixed,
      )
    );
  }
}