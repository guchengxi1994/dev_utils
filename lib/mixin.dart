// ignore_for_file: constant_identifier_names

import 'package:dev_utils/base_entity.dart';
import 'package:dev_utils/dio_utils.dart';
import 'package:dio/dio.dart';

const HTTPOK = 20000;

enum HTTPTypes { GET, POST, DELETE, PUT }

mixin HttpMixin<Q extends BaseRequest, R extends BaseResponse> on BaseRequest {
  final DioUtils dioUtils = DioUtils();

  Future<R?> queryById(String url,
      {params, options, cancelToken, Function? onError}) async {
    Map<String, dynamic> queryParams =
        params == null ? {} : params as Map<String, dynamic>;
    queryParams["id"] = toJson()['id'];
    Response? r = await dioUtils.get(url,
        params: queryParams, options: options, cancelToken: cancelToken);
    if (r != null) {
      if (r.data['code'] != HTTPOK && onError != null) {
        onError();
      }
      return BaseResponse.fromJson(r.data['data']) as R;
    }
    return null;
  }

  Future<List<R>?> queryMany(String url,
      {params, options, cancelToken, Function? onError});

  Future<bool> updateById(String url,
      {params, options, cancelToken, Function? onError});

  Future<bool> deleteById(String url,
      {params, options, cancelToken, Function? onError});

  Future<bool> create();
}
