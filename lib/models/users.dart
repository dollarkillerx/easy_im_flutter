import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class User {
  String avtar; // 头像
  String nickname; // 昵称
  String phone; // 电话
  String online_time; // 最后上线日期

  User(this.avtar, this.nickname, this.phone, this.online_time);

  // 固定格式，不同的类使用不同的mixin即可
  // 这里声明一个工厂构造方法
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class SendSMS {
  String smsId;

  SendSMS(this.smsId);

  // 固定格式，不同的类使用不同的mixin即可
  // 这里声明一个工厂构造方法
  factory SendSMS.fromJson(Map<String, dynamic> json) =>
      _$SendSMSFromJson(json);

  Map<String, dynamic> toJson() => _$SendSMSToJson(this);
}

@JsonSerializable()
class CheckSMS {
  bool ok;

  CheckSMS(this.ok);

  // 固定格式，不同的类使用不同的mixin即可
  // 这里声明一个工厂构造方法
  factory CheckSMS.fromJson(Map<String, dynamic> json) =>
      _$CheckSMSFromJson(json);

  Map<String, dynamic> toJson() => _$CheckSMSToJson(this);
}

@JsonSerializable()
class AuthPayload {
  String accessTokenString;
  String userID;

  AuthPayload(this.accessTokenString, this.userID);

  factory AuthPayload.fromJson(Map<String, dynamic> json) =>
      _$AuthPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$AuthPayloadToJson(this);
}

@JsonSerializable()
class UserInfo {
  String accountId;
  String account;
  String fullName;
  String nickName;
  String birthday;
  String email;
  String about;
  String avatar;

  UserInfo(this.accountId, this.account, this.fullName, this.nickName,
      this.birthday, this.email, this.about, this.avatar);

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}

@JsonSerializable()
class Friendships {
  List<Friendship> friendships;

  Friendships(this.friendships);

  factory Friendships.fromJson(Map<String, dynamic> json) =>
      _$FriendshipsFromJson(json);

  Map<String, dynamic> toJson() => _$FriendshipsToJson(this);
}

@JsonSerializable()
class Friendship {
  String accountId;
  String account;
  String fullName;
  String nickName;
  String birthday;
  String email;
  String about;
  String avatar;

  Friendship(this.accountId, this.account, this.fullName, this.nickName,
      this.birthday, this.email, this.about, this.avatar);

  factory Friendship.fromJson(Map<String, dynamic> json) =>
      _$FriendshipFromJson(json);

  Map<String, dynamic> toJson() => _$FriendshipToJson(this);
}
