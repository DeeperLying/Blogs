import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class HttpUtils {
  static const BASE_URL = "http://test.api.snsports.cn";
  static const CONNECT_TIMEOUT = 5000;
  static const RECEIVE_TIMEOUT = 3000;
  static Dio dio;
  static final passport = '6d66jtgu5xqbvnt9qwpegyimepaalkpa';

  /// 生成Dio实例
  static Dio getInstance() {
    if (dio == null) {
      //通过传递一个 `BaseOptions`来创建dio实例
      var options = BaseOptions(
          baseUrl: BASE_URL + "/api/content/phone/",
          connectTimeout: CONNECT_TIMEOUT,
          receiveTimeout: RECEIVE_TIMEOUT);
      dio = new Dio(options);
    }
    return dio;
  }

  /// 请求api
  static Future<Map<String, dynamic>> request(String url, {data, method}) async {
    data = data ?? {};
    method = method ?? "get";
    var dio = getInstance();
    // final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
    
    dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options){
          // 在请求被发送之前做一些事情
          if (options.method == "GET") {
            options.queryParameters["passport"] = passport;
          } else {
            options.data["passport"] = passport;
          }
        },
        onResponse:(Response response) {
          // 在返回响应数据之前做一些预处理
          // print(response.error);
          // const res = response.request;
          String message;
          String code;
            if (response.data["error"]) {
              var code = response.data["messages"]["error"]["code"];
              var message = response.data["messages"]["error"]["message"];
              if (code == 'login_required' || code == 'login_account_expired' || code == 'login_account_denied') {
                print('api报错${code}${message}');
                // navigatorKey.currentState.pushNamed('/LOGOIN'); 跳转到对应的页面
              } else {
                return message;
              }
            }
          return response; // continue
        },
        onError: (DioError e) {
          // 当请求失败时做一些预处理
          return e;//continue
        }
    ));
    
    var res;
    if (method == "get") {
      // get
      var response = await dio.get(url, queryParameters: data);
      res = response.data;
    } else {
      // post
      var response = await dio.post(url, data: data);
      res = response.data;
    }
    return res;
  }

  /// get
  static Future<Map> get(url, data) {
    return request(url, data: data);
  }

  /// post
  static Future<Map> post(url, data) {
    return request(url, data: data, method: "post");
  }
}

