import 'package:dev_utils/result.dart';
import 'package:dio/dio.dart';

class DioUtils {
  // ignore: prefer_final_fields
  static DioUtils _instance = DioUtils._internal();
  factory DioUtils() => _instance;
  Dio? _dio;

  DioUtils._internal() {
    _dio ??= Dio();
  }

  setBaseUrl(String s) {
    _dio!.options.baseUrl = s;
  }

  addInterceptor<T extends Interceptor>(T t) {
    _dio!.interceptors.add(t);
  }

  ///get请求方法
  Future<Result<Response?, String>> get(url,
      {params, options, cancelToken}) async {
    try {
      Response response = await _dio!.get(url,
          queryParameters: params, options: options, cancelToken: cancelToken);
      return Result(data: response, err: null);
    } on Exception catch (e) {
      return Result(data: null, err: e.toString());
    }
  }

  ///put请求方法
  Future<Result<Response?, String>> put(url,
      {data, params, options, cancelToken}) async {
    try {
      Response response = await _dio!.put(url,
          data: data,
          queryParameters: params,
          options: options,
          cancelToken: cancelToken);
      return Result(data: response, err: null);
    } on Exception catch (e) {
      return Result(data: null, err: e.toString());
    }
  }

  ///post请求
  Future<Result<Response?, String>> post(url,
      {data, params, options, cancelToken}) async {
    try {
      Response response = await _dio!.post(url,
          data: data,
          queryParameters: params,
          options: options,
          cancelToken: cancelToken);
      return Result(data: response, err: null);
    } on Exception catch (e) {
      return Result(data: null, err: e.toString());
    }
  }

  //取消请求
  cancleRequests(CancelToken token) {
    token.cancel("cancelled");
  }
}
