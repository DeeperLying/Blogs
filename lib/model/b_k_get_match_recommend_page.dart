import 'package:json_annotation/json_annotation.dart';

part 'b_k_get_match_recommend_page.g.dart';


@JsonSerializable()
class BKGetMatchRecommendPage extends Object {

  @JsonKey(name: 'error')
  bool error;

  @JsonKey(name: 'verify')
  bool verify;

  @JsonKey(name: 'redirect')
  bool redirect;

  @JsonKey(name: 'ok')
  bool ok;

  @JsonKey(name: 'timecost')
  int timecost;

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'messages')
  Messages messages;

  BKGetMatchRecommendPage(this.error,this.verify,this.redirect,this.ok,this.timecost,this.code,this.messages,);

  factory BKGetMatchRecommendPage.fromJson(Map<String, dynamic> srcJson) => _$BKGetMatchRecommendPageFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BKGetMatchRecommendPageToJson(this);

}


@JsonSerializable()
class Messages extends Object {

  @JsonKey(name: 'serverTime')
  String serverTime;

  @JsonKey(name: 'data')
  Data data;

  Messages(this.serverTime,this.data,);

  factory Messages.fromJson(Map<String, dynamic> srcJson) => _$MessagesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MessagesToJson(this);

}


@JsonSerializable()
class Data extends Object {

  @JsonKey(name: 'services')
  List<Services> services;

  @JsonKey(name: 'starMatches')
  StarMatches starMatches;

  @JsonKey(name: 'hotMatches')
  List<HotMatches> hotMatches;

  @JsonKey(name: 'banner')
  List<Banner> banner;

  Data(this.services,this.starMatches,this.hotMatches,this.banner,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}


@JsonSerializable()
class Services extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'deeplink')
  String deeplink;

  Services(this.id,this.icon,this.title,this.deeplink,);

  factory Services.fromJson(Map<String, dynamic> srcJson) => _$ServicesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ServicesToJson(this);

}


@JsonSerializable()
class StarMatches extends Object {

  @JsonKey(name: 'matches')
  List<Matches> matches;

  @JsonKey(name: 'pageSize')
  int pageSize;

  @JsonKey(name: 'pageNum')
  int pageNum;

  StarMatches(this.matches,this.pageSize,this.pageNum,);

  factory StarMatches.fromJson(Map<String, dynamic> srcJson) => _$StarMatchesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StarMatchesToJson(this);

}


@JsonSerializable()
class Matches extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'poster')
  String poster;

  @JsonKey(name: 'deeplink')
  String deeplink;

  Matches(this.id,this.poster,this.deeplink,);

  factory Matches.fromJson(Map<String, dynamic> srcJson) => _$MatchesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MatchesToJson(this);

}


@JsonSerializable()
class HotMatches extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'chineseName')
  String chineseName;

  @JsonKey(name: 'matchScore')
  double matchScore;

  @JsonKey(name: 'hotVideos')
  List<HotVideos> hotVideos;

  HotMatches(this.id,this.chineseName,this.matchScore,this.hotVideos,);

  factory HotMatches.fromJson(Map<String, dynamic> srcJson) => _$HotMatchesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HotMatchesToJson(this);

}


@JsonSerializable()
class HotVideos extends Object {

  @JsonKey(name: 'titleB')
  String titleB;

  @JsonKey(name: 'titleC')
  String titleC;

  @JsonKey(name: 'titleA')
  String titleA;

  @JsonKey(name: 'deeplink')
  String deeplink;

  @JsonKey(name: 'poster')
  String poster;

  @JsonKey(name: 'pvCount')
  int pvCount;

  HotVideos(this.titleB,this.titleC,this.titleA,this.deeplink,this.poster,this.pvCount,);

  factory HotVideos.fromJson(Map<String, dynamic> srcJson) => _$HotVideosFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HotVideosToJson(this);

}


@JsonSerializable()
class Banner extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'poster')
  String poster;

  @JsonKey(name: 'deeplink')
  String deeplink;

  Banner(this.id,this.poster,this.deeplink,);

  factory Banner.fromJson(Map<String, dynamic> srcJson) => _$BannerFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BannerToJson(this);

}


