// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'b_k_get_match_recommend_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BKGetMatchRecommendPage _$BKGetMatchRecommendPageFromJson(
    Map<String, dynamic> json) {
  return BKGetMatchRecommendPage(
      json['error'] as bool,
      json['verify'] as bool,
      json['redirect'] as bool,
      json['ok'] as bool,
      json['timecost'] as int,
      json['code'] as int,
      json['messages'] == null
          ? null
          : Messages.fromJson(json['messages'] as Map<String, dynamic>));
}

Map<String, dynamic> _$BKGetMatchRecommendPageToJson(
        BKGetMatchRecommendPage instance) =>
    <String, dynamic>{
      'error': instance.error,
      'verify': instance.verify,
      'redirect': instance.redirect,
      'ok': instance.ok,
      'timecost': instance.timecost,
      'code': instance.code,
      'messages': instance.messages
    };

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return Messages(
      json['serverTime'] as String,
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$MessagesToJson(Messages instance) =>
    <String, dynamic>{'serverTime': instance.serverTime, 'data': instance.data};

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      (json['services'] as List)
          ?.map((e) =>
              e == null ? null : Services.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['starMatches'] == null
          ? null
          : StarMatches.fromJson(json['starMatches'] as Map<String, dynamic>),
      (json['hotMatches'] as List)
          ?.map((e) =>
              e == null ? null : HotMatches.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['banner'] as List)
          ?.map((e) =>
              e == null ? null : Banner.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'services': instance.services,
      'starMatches': instance.starMatches,
      'hotMatches': instance.hotMatches,
      'banner': instance.banner
    };

Services _$ServicesFromJson(Map<String, dynamic> json) {
  return Services(json['id'] as String, json['icon'] as String,
      json['title'] as String, json['deeplink'] as String);
}

Map<String, dynamic> _$ServicesToJson(Services instance) => <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'title': instance.title,
      'deeplink': instance.deeplink
    };

StarMatches _$StarMatchesFromJson(Map<String, dynamic> json) {
  return StarMatches(
      (json['matches'] as List)
          ?.map((e) =>
              e == null ? null : Matches.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['pageSize'] as int,
      json['pageNum'] as int);
}

Map<String, dynamic> _$StarMatchesToJson(StarMatches instance) =>
    <String, dynamic>{
      'matches': instance.matches,
      'pageSize': instance.pageSize,
      'pageNum': instance.pageNum
    };

Matches _$MatchesFromJson(Map<String, dynamic> json) {
  return Matches(json['id'] as String, json['poster'] as String,
      json['deeplink'] as String);
}

Map<String, dynamic> _$MatchesToJson(Matches instance) => <String, dynamic>{
      'id': instance.id,
      'poster': instance.poster,
      'deeplink': instance.deeplink
    };

HotMatches _$HotMatchesFromJson(Map<String, dynamic> json) {
  return HotMatches(
      json['id'] as String,
      json['chineseName'] as String,
      (json['matchScore'] as num)?.toDouble(),
      (json['hotVideos'] as List)
          ?.map((e) =>
              e == null ? null : HotVideos.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$HotMatchesToJson(HotMatches instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chineseName': instance.chineseName,
      'matchScore': instance.matchScore,
      'hotVideos': instance.hotVideos
    };

HotVideos _$HotVideosFromJson(Map<String, dynamic> json) {
  return HotVideos(
      json['titleB'] as String,
      json['titleC'] as String,
      json['titleA'] as String,
      json['deeplink'] as String,
      json['poster'] as String,
      json['pvCount'] as int);
}

Map<String, dynamic> _$HotVideosToJson(HotVideos instance) => <String, dynamic>{
      'titleB': instance.titleB,
      'titleC': instance.titleC,
      'titleA': instance.titleA,
      'deeplink': instance.deeplink,
      'poster': instance.poster,
      'pvCount': instance.pvCount
    };

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return Banner(json['id'] as String, json['poster'] as String,
      json['deeplink'] as String);
}

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'id': instance.id,
      'poster': instance.poster,
      'deeplink': instance.deeplink
    };
