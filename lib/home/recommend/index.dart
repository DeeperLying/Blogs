import 'package:flutter/material.dart';
import '../../components/swiper.dart';
import '../../utils/request.dart';
import 'dart:convert';

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
  var data = '-';
  final params = {
    "pageNum": 1,
    "status": 3,
    "passsport": String
  };
  @override
  void initState() {
    // TODO: implement initState
      /*('GetBMMatchListByAreaId.json', params).then((response) {
        final responseJson =  json.decode(response.toString());
        print(responseJson["messages"]);
        setState(() {
          data = responseJson["messages"]["serverTime"];
        });
      });*/
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text(data);
  }

  void _initData() async {
    final response = await HttpUtils.get('GetMyHome.json', params);
    print(response);
  }  

}