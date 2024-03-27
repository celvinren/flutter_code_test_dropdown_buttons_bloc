import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_dto.freezed.dart';
part 'country_dto.g.dart';

@freezed
abstract class CountryDto with _$CountryDto {
  const factory CountryDto({
    required int id,
    required String value,
  }) = _CountryDto;

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);
}
