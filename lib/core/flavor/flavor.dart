import 'package:freezed_annotation/freezed_annotation.dart';

part 'flavor.freezed.dart';
part 'flavor.g.dart';

enum Flavor {
  dev,
  devMock,
  tst,
  qa,
  prod;

  static Flavor fromString(String value) {
    switch (value) {
      case 'dev':
        return Flavor.dev;
      case 'devMock':
        return Flavor.devMock;
      case 'tst':
        return Flavor.tst;
      case 'qa':
        return Flavor.qa;
      case 'prod':
        return Flavor.prod;
      default:
        throw Exception('Unknown flavor: $value');
    }
  }
}

@freezed
class FlavorConfig with _$FlavorConfig {
  factory FlavorConfig({
    required Flavor flavor,
    required String baseApiUrl,
    required String apiKey,
    required String userAgent,
  }) = _FlavorConfig;

  factory FlavorConfig.fromJson(Map<String, dynamic> json) =>
      _$FlavorConfigFromJson(json);
}
