import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String ACCESS_CONTROL_ALLOW_ORIGIN = "Access-Control-Allow-Origin";
const int timeOut = 60 * 1000; // a min time out

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();
    // String? accessToken = Hive.box('Token').get('token');

    // Map<String, String> headers = {
    //   CONTENT_TYPE: APPLICATION_JSON,
    //   ACCEPT: APPLICATION_JSON,
    //   ACCESS_CONTROL_ALLOW_ORIGIN: "*",
    //   if (accessToken != null || token != null)
    //     AUTHORIZATION: "Bearer ${accessToken ?? token}",
    // };

    dio.options = BaseOptions(
      receiveDataWhenStatusError: true,
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
      connectTimeout: const Duration(seconds: 60),
      contentType: "application/x-www-form-urlencoded",
      responseType: ResponseType.json,
      extra: <String, dynamic>{
        "Access-Control-Allow-Methods": "POST, OPTIONS, GET, PUT, DELETE",
      },
      headers: {
        ACCEPT: APPLICATION_JSON,
        ACCESS_CONTROL_ALLOW_ORIGIN: "*",

        // allow web, android and ios to access the api
      },
    );

    if (!kReleaseMode) {
      // its debug mode so print app logs
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }
    // Future<Response<dynamic>> retry(RequestOptions requestOptions) async {
    //   final options = Options(
    //     method: requestOptions.method,
    //     headers: requestOptions.headers,
    //   );
    //   // print("options: ${options.headers}");
    //   return dio.request<dynamic>(requestOptions.path,
    //       data: requestOptions.data,
    //       queryParameters: requestOptions.queryParameters,
    //       options: options);
    // }

    // Future<bool> refreshToken() async {
    //   final String? refreshToken = Hive.box('Token').get("refresh");
    //   final response = await dio.post(
    //     "auth/refresh",
    //     data: {"refreshToken": refreshToken},
    //   );
    //   if (response.statusCode == 201) {
    //     // accessToken = response.data;
    //     // log(accessToken!);
    //     // Hive.box('Token').put("token", accessToken);
    //     return true;
    //   } else {
    //     // accessToken = null;
    //     Hive.box('Token').deleteAll(Hive.box('Token').keys.toList());
    //     return false;
    //   }
    // }

    // dio.interceptors
    //     .add(InterceptorsWrapper(onRequest: (options, handler) async {
    //   if (!options.path.contains('http')) {
    //     options.path = AppLinks.baseUrl + options.path;
    //   }
    //   options.headers['Authorization'] = 'Bearer $accessToken';
    //   options.headers['Content-Type'] = 'application/json';
    //   options.headers['Accept'] = 'application/json';
    //   options.headers['Access-Control-Allow-Origin'] = '*';

    //   return handler.next(options);
    // }, onError: (e, handler) async {
    //   if (e.response?.statusCode == 401) {
    //     // print(e.response.toString());
    //     if (Hive.box('Token').containsKey("refresh")) {
    //       if (await refreshToken()) {
    //         return handler.resolve(await retry(e.requestOptions));
    //       }
    //     }
    //   }
    //   return handler.next(e);
    // }));

    return dio;
  }
}
