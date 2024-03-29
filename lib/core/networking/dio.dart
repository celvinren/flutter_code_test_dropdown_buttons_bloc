import 'package:dio/dio.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/flavor/flavor.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/networking/auth_interceptor.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/networking/dio_error_interceptor.dart';

Dio getDioClient({required FlavorConfig config}) {
  final dioInstance = Dio(
    BaseOptions(
      baseUrl: config.baseApiUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    ),
  )..interceptors.addAll(
      [
        DioErrorInterceptor(),
        AuthInterceptor(flavorConfig: config),
      ],
    );

  return dioInstance;
}
