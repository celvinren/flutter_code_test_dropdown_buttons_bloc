import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu_cubit.dart';

class DisplayCountrySelection extends StatelessWidget {
  const DisplayCountrySelection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountriesDropdownMenuCubit, CountriesDropdownMenuState>(
      builder: (context, state) {
        String? selectedCountry;
        if (state is Success) {
          selectedCountry = state.selectedCountry?.value;
        }

        return Text('Selected Country: ${selectedCountry ?? 'Unselected'}');
      },
    );
  }
}
