import 'package:flutter/material.dart';
import '../../components/swiper.dart';
import '../../model/b_k_get_match_recommend_page.dart';
import '../../utils/request.dart';
import 'dart:convert';

class HomeRecommend extends StatelessWidget {
  String swiperView = '123';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            child: new SwiperView(swiperView),
          ),
          new Container(
            child: new ViewContainer(),
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

class ViewContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ViewContainer();
  }
}

class _ViewContainer extends State<ViewContainer> {
  String data = '';
  List<Widget> banner = [];
  final params = {
    "pageNum": 1,
    "status": 3,
    "passsport": String
  };
  @override
  void initState() {
    // TODO: implement initState
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text(data ? data: '=====');
  }

  void _initData() async {
    await HttpUtils.get('BKGetMatchRecommendPage.json', params).then((response) {
      var data = BKGetMatchRecommendPage.fromJson(response);
      var bannerList = data.messages.data.banner;
      for(var i in bannerList) {
        String src = this.imageFilter(i.poster);
        this.banner.add(new Image.network(src, fit: BoxFit.cover,));
      }
    });
  }

  String imageFilter(String src) {
    var img = "http://images.snsports.cn/${src}?imageView2/1/w/46/h/46";
    return img;
  }

}
