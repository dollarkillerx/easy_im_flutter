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
