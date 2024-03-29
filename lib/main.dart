import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/flavor/flavor.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/networking/dio.dart';

void main() {
  final flavorConfig = FlavorConfig(
    flavor: Flavor.fromString(const String.fromEnvironment('FLAVOR')),
    baseApiUrl: const String.fromEnvironment('base_api_url'),
    apiKey: const String.fromEnvironment('api_key'),
    userAgent: const String.fromEnvironment('api_user_agent'),
  );
  runApp(MyApp(config: flavorConfig));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.config, super.key});
  final FlavorConfig config;
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Hello, World!'),
              ),
            );
          },
          child: const Text('Show SnackBar'),
        ),
      ),
    );
  }
}
