import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/flavor/flavor.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/networking/dio.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/impl/place_repository_impl.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/mock/place_repository_mock.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/my_home_page.dart';

void main() {
  final flavorConfig = FlavorConfig(
    flavor: Flavor.fromString(const String.fromEnvironment('flavor')),
    baseApiUrl: const String.fromEnvironment('base_api_url'),
    apiKey: const String.fromEnvironment('api_key'),
    userAgent: const String.fromEnvironment('api_user_agent'),
  );
  final dio = getDioClient(config: flavorConfig);
  runApp(MyApp(config: flavorConfig, dio: dio));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.config, required this.dio, super.key});
  final FlavorConfig config;
  final Dio dio;
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<FlavorConfig>(
          create: (_) => config,
        ),
        RepositoryProvider<Dio>(
          create: (_) => getDioClient(config: config),
        ),
        RepositoryProvider<PlaceRepository>(
          create: (_) => config.flavor == Flavor.devMock
              ? PlaceRepositoryMock()
              : PlaceRepositoryImpl(dio: dio),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
