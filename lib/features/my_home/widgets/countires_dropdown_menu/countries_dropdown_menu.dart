import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu_cubit.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/country/country.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/widgets/custom_dropdown_menu.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CountriesDropdownMenuButton extends HookWidget {
  const CountriesDropdownMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountriesDropdownMenuCubit, CountriesDropdownMenuState>(
      builder: (context, state) {
        var countries = <Country>[];
        var isDropdownEnable = true;
        Widget? leadingIcon;
        Country? selectedCountry;
        if (state is Success) {
          countries = state.countries;
          isDropdownEnable = true;
          leadingIcon = null;
          selectedCountry = state.selectedCountry;
        } else if (state is Loading) {
          countries = [];
          isDropdownEnable = false;
          leadingIcon = const CircularProgressIndicator();
          selectedCountry = null;
        } else if (state is Error) {
          countries = [];
          isDropdownEnable = false;
          leadingIcon = const Icon(Icons.error);
          selectedCountry = null;
        }

        return CustomDropdownMenu(
          selectedItem:
              countries.firstWhereOrNull((e) => e.id == selectedCountry?.id),
          items: countries,
          itemBuilder: (item) => DropdownMenuEntry<Country>(
            value: item,
            label: item.value,
          ),
          onSelected:
              context.read<CountriesDropdownMenuCubit>().setSelectedCountry,
          isDropdownEnable: isDropdownEnable,
          leadingIcon: leadingIcon,
        );
      },
    );
  }
}
