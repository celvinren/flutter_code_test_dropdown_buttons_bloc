// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flavor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlavorConfig _$FlavorConfigFromJson(Map<String, dynamic> json) {
  return _FlavorConfig.fromJson(json);
}

/// @nodoc
mixin _$FlavorConfig {
  Flavor get flavor => throw _privateConstructorUsedError;
  String get baseApiUrl => throw _privateConstructorUsedError;
  String get apiKey => throw _privateConstructorUsedError;
  String get userAgent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlavorConfigCopyWith<FlavorConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorConfigCopyWith<$Res> {
  factory $FlavorConfigCopyWith(
          FlavorConfig value, $Res Function(FlavorConfig) then) =
      _$FlavorConfigCopyWithImpl<$Res, FlavorConfig>;
  @useResult
  $Res call(
      {Flavor flavor, String baseApiUrl, String apiKey, String userAgent});
}

/// @nodoc
class _$FlavorConfigCopyWithImpl<$Res, $Val extends FlavorConfig>
    implements $FlavorConfigCopyWith<$Res> {
  _$FlavorConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? baseApiUrl = null,
    Object? apiKey = null,
    Object? userAgent = null,
  }) {
    return _then(_value.copyWith(
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      baseApiUrl: null == baseApiUrl
          ? _value.baseApiUrl
          : baseApiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlavorConfigImplCopyWith<$Res>
    implements $FlavorConfigCopyWith<$Res> {
  factory _$$FlavorConfigImplCopyWith(
          _$FlavorConfigImpl value, $Res Function(_$FlavorConfigImpl) then) =
      __$$FlavorConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Flavor flavor, String baseApiUrl, String apiKey, String userAgent});
}

/// @nodoc
class __$$FlavorConfigImplCopyWithImpl<$Res>
    extends _$FlavorConfigCopyWithImpl<$Res, _$FlavorConfigImpl>
    implements _$$FlavorConfigImplCopyWith<$Res> {
  __$$FlavorConfigImplCopyWithImpl(
      _$FlavorConfigImpl _value, $Res Function(_$FlavorConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? baseApiUrl = null,
    Object? apiKey = null,
    Object? userAgent = null,
  }) {
    return _then(_$FlavorConfigImpl(
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      baseApiUrl: null == baseApiUrl
          ? _value.baseApiUrl
          : baseApiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlavorConfigImpl implements _FlavorConfig {
  _$FlavorConfigImpl(
      {required this.flavor,
      required this.baseApiUrl,
      required this.apiKey,
      required this.userAgent});

  factory _$FlavorConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlavorConfigImplFromJson(json);

  @override
  final Flavor flavor;
  @override
  final String baseApiUrl;
  @override
  final String apiKey;
  @override
  final String userAgent;

  @override
  String toString() {
    return 'FlavorConfig(flavor: $flavor, baseApiUrl: $baseApiUrl, apiKey: $apiKey, userAgent: $userAgent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorConfigImpl &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.baseApiUrl, baseApiUrl) ||
                other.baseApiUrl == baseApiUrl) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, flavor, baseApiUrl, apiKey, userAgent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorConfigImplCopyWith<_$FlavorConfigImpl> get copyWith =>
      __$$FlavorConfigImplCopyWithImpl<_$FlavorConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlavorConfigImplToJson(
      this,
    );
  }
}

abstract class _FlavorConfig implements FlavorConfig {
  factory _FlavorConfig(
      {required final Flavor flavor,
      required final String baseApiUrl,
      required final String apiKey,
      required final String userAgent}) = _$FlavorConfigImpl;

  factory _FlavorConfig.fromJson(Map<String, dynamic> json) =
      _$FlavorConfigImpl.fromJson;

  @override
  Flavor get flavor;
  @override
  String get baseApiUrl;
  @override
  String get apiKey;
  @override
  String get userAgent;
  @override
  @JsonKey(ignore: true)
  _$$FlavorConfigImplCopyWith<_$FlavorConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
