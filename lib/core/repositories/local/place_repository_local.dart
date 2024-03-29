import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/country/country.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/state/state.dart';

class PlaceRepositoryLocal extends PlaceRepository {
  PlaceRepositoryLocal();

  @override
  Future<List<Country>> getCountries() {
    // TODO: implement getCountries
    throw UnimplementedError();
  }

  @override
  Future<List<State>> getStates(int countryId) {
    // TODO: implement getStates
    throw UnimplementedError();
  }
}
