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
