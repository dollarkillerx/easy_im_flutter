import 'dart:convert';
import 'dart:io';
import 'package:easy_im/common/library/jwt.dart';
import 'package:easy_im/models/g_response.dart';
import 'package:get/get.dart';
import '../routers/app_routes.dart';
import 'graph_ql_client.dart';
import 'package:crypto/crypto.dart';

const SERVER_API_URL = "http://127.0.0.1:8083";

class BaseProvider extends GetConnect implements IGraphQLClient {
  @override
  void onInit() {
    super.onInit();

    httpClient.baseUrl = SERVER_API_URL;

    // 请求拦截
    httpClient.addRequestModifier<void>((request) async {
      String? jwt = await LocalStorage.getJWT();
      request.headers['Authorization'] = jwt ?? '';
      String skey = "s" + "a" + "l" + "t";
      request.headers[skey] = md5
          .convert(utf8.encode(
              '${DateTime.now().millisecondsSinceEpoch ~/ 10000}-9776e538-59ba-473f-8ccf-1d72031e360f1'))
          .toString();

      return request;
    });

    // 响应拦截
    httpClient.addResponseModifier((request, response) {
      if (response.status.code! == 401) {
        Get.toNamed(AppRoutes.NotFound);
      }

      return response;
    });
  }

  @override
  Future<GResponse?> gMutate(
      {required String graphSQL, Map<String, dynamic>? variables}) async {
    Response resp = await post("/graphql", {
      "query": graphSQL,
      "variables": variables,
    });

    GResponse gResponse = GResponse.fromJson(resp.body);

    // 41001 auth
    if (gResponse.GetError() != null) {
      if (gResponse.GetError()?.code == "41001") {
        Get.toNamed(AppRoutes.NotFound);
      }
    }

    return gResponse;
  }

  @override
  Future<GResponse?> gQuery(
      {required String graphSQL, Map<String, dynamic>? variables}) async {
    Response resp = await post("/graphql", {
      "query": graphSQL,
      "variables": variables,
    });

    GResponse gResponse = GResponse.fromJson(resp.body);

    // 41001 auth
    if (gResponse.GetError() != null) {
      if (gResponse.GetError()?.code == "41001") {
        Get.toNamed(AppRoutes.NotFound);
      }
    }

    return gResponse;
  }

  Future<UploadFile?> uploadFile(File file) async {
    final formData =
        FormData({'file': MultipartFile(file.path, filename: file.path)});
    final response = await post('/upload', formData);
    if (response.statusCode == HttpStatus.created) {
      return UploadFile.fromJson(response.body);
    } else {
      return null;
      // throw Exception('Failed to upload file');
    }
  }
}

/**
    mutation chat($msg: String!) {
    chatGPT(
    input: {
    message: $me,
    }) {
    message
    }
    }

    variables:
    {
    "msg": "helloworld"
    }
 */
