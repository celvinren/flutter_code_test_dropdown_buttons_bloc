import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu_cubit.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/display_country_selection/display_country_selection.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/display_country_selection/display_state_selection.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/state_dropdown_menu/states_dropdown_menu.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/state_dropdown_menu/states_dropdown_menu_cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CountriesDropdownMenuCubit(
            repository: context.read<PlaceRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => StatesDropdownMenuCubit(
            repository: context.read<PlaceRepository>(),
            selectedCountryStateStream:
                context.read<CountriesDropdownMenuCubit>().stream,
          ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CountriesDropdownMenuButton(),
              SizedBox(height: 16),
              StatesDropdownMenuButton(),
              SizedBox(height: 16),
              DisplayCountrySelection(),
              SizedBox(height: 16),
              DisplayStateSelection(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
