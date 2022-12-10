import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @Named("BaseUrl")
  String get baseUrl => "i have put base url inside of repo for now";

  @Named("HttpUrl")
  String get httpUrl => "https://$baseUrl/api";

  @lazySingleton
  Dio dio(@Named("HttpUrl") String url) {
    final dio = Dio(
      BaseOptions(baseUrl: url, responseType: ResponseType.plain),
    );

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options); // continue
        },
      ),
    );

    return dio;
  }
}
