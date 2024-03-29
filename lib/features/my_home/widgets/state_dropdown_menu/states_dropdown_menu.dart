import 'package:collection/collection.dart';
import 'package:flutter/material.dart' hide State;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu_cubit.dart'
    as countries_cubit;
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/state_dropdown_menu/states_dropdown_menu_cubit.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/state/state.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/widgets/custom_dropdown_menu.dart';

class StatesDropdownMenuButton extends StatelessWidget {
  const StatesDropdownMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StatesDropdownMenuCubit(
        repository: context.read<PlaceRepository>(),
        selectedCountryStateStream:
            context.read<countries_cubit.CountriesDropdownMenuCubit>().stream,
      ),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatesDropdownMenuCubit, StatesDropdownMenuState>(
      builder: (context, state) {
        var states = <State>[];
        var isDropdownEnable = true;
        Widget? leadingIcon;
        State? selectedState;
        if (state is Success) {
          states = state.states;
          isDropdownEnable = true;
          leadingIcon = null;
          selectedState = state.selectedState;
        } else if (state is Loading) {
          states = [];
          isDropdownEnable = false;
          leadingIcon = const CircularProgressIndicator();
          selectedState = null;
        } else if (state is Error) {
          states = [];
          isDropdownEnable = false;
          leadingIcon = const Icon(Icons.error);
          selectedState = null;
        }

        return CustomDropdownMenu(
          selectedItem:
              states.firstWhereOrNull((e) => e.id == selectedState?.id),
          items: states,
          itemBuilder: (item) => DropdownMenuEntry<State>(
            value: item,
            label: item.value,
          ),
          onSelected: context.read<StatesDropdownMenuCubit>().setSelectedState,
          isDropdownEnable: isDropdownEnable,
          leadingIcon: leadingIcon,
        );
      },
    );
  }
}
