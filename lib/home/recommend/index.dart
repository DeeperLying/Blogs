import 'package:flutter/material.dart';
import '../../components/swiper.dart';

class HomeRecommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            child: new SwiperView(),
          ),
          new Container(
            height: 40,
            color: Colors.yellow,
          ),
          new Container(
            height: 40,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
