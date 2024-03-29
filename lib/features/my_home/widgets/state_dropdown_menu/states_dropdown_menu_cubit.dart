import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu_cubit.dart'
    as countries_cubit;
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/state/state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'states_dropdown_menu_cubit.freezed.dart';

final statesDropdownDescription = State(
  id: -1,
  value: 'Select a state',
);

class StatesDropdownMenuCubit extends Cubit<StatesDropdownMenuState> {
  StatesDropdownMenuCubit({
    required PlaceRepository repository,
    required this.selectedCountryStateStream,
  })  : _placeRepository = repository,
        super(StatesDropdownMenuState.loading()) {
    fetchStates();
  }

  final PlaceRepository _placeRepository;
  final Stream<countries_cubit.CountriesDropdownMenuState>
      selectedCountryStateStream;
  StreamSubscription<countries_cubit.CountriesDropdownMenuState>? _subscription;

  void fetchStates() {
    _subscription = selectedCountryStateStream
        .asBroadcastStream()
        .listen((countriesState) async {
      try {
        emit(
          StatesDropdownMenuState.loading(),
        );
        final selectedCountryId = countriesState is countries_cubit.Success
            ? countriesState.selectedCountry?.id
            : null;
        if (selectedCountryId == null || selectedCountryId <= 0) {
          emit(
            StatesDropdownMenuState.success(
              states: [statesDropdownDescription],
              selectedState: statesDropdownDescription,
            ),
          );
          return;
        }

        final states = await _placeRepository.getStates(selectedCountryId);
        emit(
          StatesDropdownMenuState.success(
            states: [statesDropdownDescription, ...states],
            selectedState: statesDropdownDescription,
          ),
        );
      } catch (e) {
        emit(StatesDropdownMenuState.error(e.toString()));
      }
    });
  }

  void setSelectedState(State? value) {
    final state = this.state;
    if (state is Success) {
      emit(state.copyWith(selectedState: value));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}

@freezed
abstract class StatesDropdownMenuState with _$StatesDropdownMenuState {
  factory StatesDropdownMenuState.success({
    @Default([]) List<State> states,
    State? selectedState,
  }) = Success;

  factory StatesDropdownMenuState.loading() = Loading;

  factory StatesDropdownMenuState.error(String message) = Error;
}
