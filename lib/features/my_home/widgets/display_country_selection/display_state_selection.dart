import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/features/my_home/widgets/state_dropdown_menu/states_dropdown_menu_cubit.dart';

class DisplayStateSelection extends StatelessWidget {
  const DisplayStateSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatesDropdownMenuCubit, StatesDropdownMenuState>(
      builder: (context, state) {
        String? selectedState;
        if (state is Success) {
          selectedState = state.selectedState?.value;
        }

        return Text('Selected State: ${selectedState ?? 'Unselected'}');
      },
    );
  }
}
