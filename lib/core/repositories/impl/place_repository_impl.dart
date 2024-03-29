import 'package:dio/dio.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/local/place_repository_local.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/remote/place_repository_remote.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/country/country.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/state/state.dart';

class PlaceRepositoryImpl implements PlaceRepository {
  PlaceRepositoryImpl({required this.dio})
      : _local = PlaceRepositoryLocal(),
        _remote = PlaceRepositoryRemote(dio);

  final Dio dio;
  final PlaceRepositoryLocal _local;
  final PlaceRepositoryRemote _remote;

  @override
  Future<List<Country>> getCountries() async {
    try {
      final remoteData = await _remote.getCountries();
      return remoteData;
    } catch (e) {
      final localData = await _local.getCountries();
      return localData;
    }
  }

  @override
  Future<List<State>> getStates(String countryId) async {
    try {
      final remoteData = await _remote.getStates(countryId);
      return remoteData;
    } catch (e) {
      final localData = await _local.getStates(countryId);
      return localData;
    }
  }
}
