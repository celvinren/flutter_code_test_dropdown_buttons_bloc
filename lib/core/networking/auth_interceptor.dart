import 'package:dio/dio.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/flavor/flavor.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    required this.flavorConfig,
  });

  final FlavorConfig flavorConfig;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['x-api-key'] = flavorConfig.apiKey;

    /// This is where you can add the token to the headers.
    ///
    // final token = await getAccessToken();
    // if (token.isNotEmpty) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }

    return handler.next(options);
  }
}
