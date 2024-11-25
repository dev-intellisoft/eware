import 'package:dio/dio.dart';

class Api {
  Dio dio = Dio();

  Api() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {


        options.headers.addAll({
          'Content-Type': 'application/json',
          'x-rapidapi-key':'b5a8139b5fmsh1fe9a6472fb8070p1e7529jsn6f4b58aa7e79',
        });
        // options.baseUrl = 'https://weatherbit-v1-mashape.p.rapidapi.com';
        options.baseUrl = 'https://a2f40356-2aa4-486d-b0ba-f5132b62dae1.mock.pstmn.io/';
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        return handler.next(response);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) {
        return handler.next(error);
      },
    ));
  }
}