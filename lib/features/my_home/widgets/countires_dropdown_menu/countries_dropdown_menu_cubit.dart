import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/country/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_dropdown_menu_cubit.freezed.dart';

final countriesDropdownDescription = Country(
  id: -1,
  value: 'Select a country',
);

class CountriesDropdownMenuCubit extends Cubit<CountriesDropdownMenuState> {
  CountriesDropdownMenuCubit({required PlaceRepository repository})
      : _placeRepository = repository,
        super(CountriesDropdownMenuState.loading()) {
    fetchCountries();
  }

  final PlaceRepository _placeRepository;

  Future<void> fetchCountries() async {
    try {
      final countries = await _placeRepository.getCountries();
      emit(
        CountriesDropdownMenuState.success(
          countries: [countriesDropdownDescription, ...countries],
          selectedCountry: countriesDropdownDescription,
        ),
      );
    } catch (e) {
      emit(CountriesDropdownMenuState.error(e.toString()));
    }
  }

  void setSelectedCountry(Country? country) {
    final state = this.state;
    if (state is Success) {
      emit(state.copyWith(selectedCountry: country));
    }
  }
}

@freezed
abstract class CountriesDropdownMenuState with _$CountriesDropdownMenuState {
  factory CountriesDropdownMenuState.success({
    @Default([]) List<Country> countries,
    Country? selectedCountry,
  }) = Success;

  factory CountriesDropdownMenuState.loading() = Loading;

  factory CountriesDropdownMenuState.error(String message) = Error;
}
