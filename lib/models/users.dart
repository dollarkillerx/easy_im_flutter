import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class User {
  String avtar; // 头像
  String nickname; // 昵称
  String phone; // 电话
  String online_time;  // 最后上线日期

  User(this.avtar, this.nickname, this.phone, this.online_time);

  // 固定格式，不同的类使用不同的mixin即可
  // 这里声明一个工厂构造方法
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}