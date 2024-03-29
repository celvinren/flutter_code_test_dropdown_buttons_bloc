// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flavor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlavorConfigImpl _$$FlavorConfigImplFromJson(Map<String, dynamic> json) =>
    _$FlavorConfigImpl(
      flavor: $enumDecode(_$FlavorEnumMap, json['flavor']),
      baseApiUrl: json['baseApiUrl'] as String,
      apiKey: json['apiKey'] as String,
      userAgent: json['userAgent'] as String,
    );

Map<String, dynamic> _$$FlavorConfigImplToJson(_$FlavorConfigImpl instance) =>
    <String, dynamic>{
      'flavor': _$FlavorEnumMap[instance.flavor]!,
      'baseApiUrl': instance.baseApiUrl,
      'apiKey': instance.apiKey,
      'userAgent': instance.userAgent,
    };

const _$FlavorEnumMap = {
  Flavor.dev: 'dev',
  Flavor.tst: 'tst',
  Flavor.qa: 'qa',
  Flavor.prod: 'prod',
};
