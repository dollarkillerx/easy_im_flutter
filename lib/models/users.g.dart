// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['avtar'] as String,
      json['nickname'] as String,
      json['phone'] as String,
      json['online_time'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'avtar': instance.avtar,
      'nickname': instance.nickname,
      'phone': instance.phone,
      'online_time': instance.online_time,
    };

SendSMS _$SendSMSFromJson(Map<String, dynamic> json) => SendSMS(
      json['smsId'] as String,
    );

Map<String, dynamic> _$SendSMSToJson(SendSMS instance) => <String, dynamic>{
      'smsId': instance.smsId,
    };

CheckSMS _$CheckSMSFromJson(Map<String, dynamic> json) => CheckSMS(
      json['ok'] as bool,
    );

Map<String, dynamic> _$CheckSMSToJson(CheckSMS instance) => <String, dynamic>{
      'ok': instance.ok,
    };

AuthPayload _$AuthPayloadFromJson(Map<String, dynamic> json) => AuthPayload(
      json['accessTokenString'] as String,
      json['userID'] as String,
    );

Map<String, dynamic> _$AuthPayloadToJson(AuthPayload instance) =>
    <String, dynamic>{
      'accessTokenString': instance.accessTokenString,
      'userID': instance.userID,
    };

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      json['accountId'] as String,
      json['account'] as String,
      json['fullName'] as String,
      json['nickName'] as String,
      json['birthday'] as String,
      json['email'] as String,
      json['about'] as String,
      json['avatar'] as String,
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'accountId': instance.accountId,
      'account': instance.account,
      'fullName': instance.fullName,
      'nickName': instance.nickName,
      'birthday': instance.birthday,
      'email': instance.email,
      'about': instance.about,
      'avatar': instance.avatar,
    };

Friendships _$FriendshipsFromJson(Map<String, dynamic> json) => Friendships(
      (json['friendships'] as List<dynamic>)
          .map((e) => Friendship.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FriendshipsToJson(Friendships instance) =>
    <String, dynamic>{
      'friendships': instance.friendships,
    };

Friendship _$FriendshipFromJson(Map<String, dynamic> json) => Friendship(
      json['accountId'] as String,
      json['account'] as String,
      json['fullName'] as String,
      json['nickName'] as String,
      json['birthday'] as String,
      json['email'] as String,
      json['about'] as String,
      json['avatar'] as String,
    );

Map<String, dynamic> _$FriendshipToJson(Friendship instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'account': instance.account,
      'fullName': instance.fullName,
      'nickName': instance.nickName,
      'birthday': instance.birthday,
      'email': instance.email,
      'about': instance.about,
      'avatar': instance.avatar,
    };
