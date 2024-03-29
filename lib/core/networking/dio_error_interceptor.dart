import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioErrorInterceptor extends Interceptor {
  DioErrorInterceptor();

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    FlutterError.reportError(
      FlutterErrorDetails(
        exception: err,
        stack: err.stackTrace,
      ),
    );

    return handler.next(err);
  }
}
