import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'g_response.g.dart';

@JsonSerializable()
class GResponse {
  List<GError>? errors;
  Map<String, dynamic> data;

  // 固定格式，不同的类使用不同的mixin即可
  // 这里声明一个工厂构造方法
  factory GResponse.fromJson(Map<String, dynamic> json) =>
      _$GResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GResponseToJson(this);

  GResponse(this.errors, this.data);

  GErrorItem? GetError() {
    if (errors == null || errors?.length == 0) {
      return null;
    }

    GErrorItem? errMsg;

    errors?.forEach((element) {
      var msg = element.message.substring(element.message.indexOf('{'));

      errMsg = GErrorItem.fromJson(jsonDecode(msg));
    });

    return errMsg;
  }

  Map<String, dynamic>? GetData() {
    if (data == null) {
      return null;
    }

    Map<String, dynamic>? result;

    data.forEach((key, value) {
      result = value;
    });

    return result;
  }
}

@JsonSerializable()
class GError {
  String message;
  List<String> path;

  GError(this.message, this.path);

  // 固定格式，不同的类使用不同的mixin即可
  // 这里声明一个工厂构造方法
  factory GError.fromJson(Map<String, dynamic> json) => _$GErrorFromJson(json);

  Map<String, dynamic> toJson() => _$GErrorToJson(this);
}

@JsonSerializable()
class GErrorItem {
  String code;
  String message;

  GErrorItem(this.code, this.message);

  factory GErrorItem.fromJson(Map<String, dynamic> json) =>
      _$GErrorItemFromJson(json);

  Map<String, dynamic> toJson() => _$GErrorItemToJson(this);
}

@JsonSerializable()
class UploadFile {
  String filename;
  String url;

  UploadFile(this.filename, this.url);

  factory UploadFile.fromJson(Map<String, dynamic> json) =>
      _$UploadFileFromJson(json);

  Map<String, dynamic> toJson() => _$UploadFileToJson(this);
}

/**
    @JsonSerializable()
    class GError {
    String message;
    List<String> path;

    GError(this.message, this.path);

    // 固定格式，不同的类使用不同的mixin即可
    // 这里声明一个工厂构造方法
    factory GError.fromJson(Map<String, dynamic> json) => _$GErrorFromJson(json);

    Map<String, dynamic> toJson() => _$GErrorToJson(this);
    }

    1）@JsonSerializable() ：表示当前类需要被 json_serializable 处理；

    2）part 'result.g.dart'：这里的 part 表示当前文件（result.dart）关联 result.g.dart，其中 result.g.dart 命名规范是：文件名称.g.dart；

    3） _$ResultFromJson ：是 json_serializable 帮我们生成的将 Map 转为实体类的方法，这个方法的命名规则：_$+当前类名+FromJson；

    4）_$ResultToJson ：是 json_serializable 帮我们生成的将实体类转为 Map 的方法，这个方法的命名规则：_$+当前类名+ToJson；

    5）factory Result.fromJson : 这里是声明了工厂构造函数 fromJson ；

    去到项目根目录，执行 flutter pub run build_runner build 命令，生成 result.g.dart 文件
 */
