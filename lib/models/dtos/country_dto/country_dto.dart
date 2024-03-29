import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/country/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_dto.freezed.dart';
part 'country_dto.g.dart';

@freezed
abstract class CountryDto with _$CountryDto {
  const factory CountryDto({
    required int id,
    required String value,
  }) = _CountryDto;
  const CountryDto._();

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);

  Country toCountry() => Country(
        id: id,
        value: value,
      );
}
