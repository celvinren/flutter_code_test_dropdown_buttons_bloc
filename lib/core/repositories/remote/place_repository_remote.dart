import 'package:dio/dio.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/country/country.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/state/state.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/dtos/country_dto/country_dto.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/dtos/state_dto/state_dto.dart';

class PlaceRepositoryRemote extends PlaceRepository {
  PlaceRepositoryRemote(this.dio);
  final Dio dio;

  @override
  Future<List<Country>> getCountries() async {
    final result = await dio.get<List<dynamic>>('/countries');
    final data = result.data;
    if (data == null) return [];

    final json = List<Map<String, dynamic>>.from(data);
    return json.map((e) => CountryDto.fromJson(e).toCountry()).toList();
  }

  @override
  Future<List<State>> getStates(String countryId) async {
    final result = await dio.get<List<dynamic>>('/countries/$countryId/states');
    final data = result.data;
    if (data == null) return [];

    final json = List<Map<String, dynamic>>.from(data);
    return json.map((e) => StateDto.fromJson(e).toState()).toList();
  }
}
