import 'package:flutter/material.dart';

class CustomDropdownMenu<T> extends StatelessWidget {
  const CustomDropdownMenu({
    required this.selectedItem,
    required this.items,
    required this.itemBuilder,
    required this.onSelected,
    this.isDropdownEnable = true,
    this.trailingIcon,
    super.key,
  });

  final T? selectedItem;
  final List<T> items;
  final DropdownMenuEntry<T> Function(T item) itemBuilder;
  final bool isDropdownEnable;
  final Widget? trailingIcon;
  final void Function(T? value) onSelected;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<T>(
      width: 200,
      initialSelection: selectedItem,
      dropdownMenuEntries: items.map(itemBuilder).toList(),
      enabled: isDropdownEnable,
      textStyle: TextStyle(
        color: isDropdownEnable ? Colors.black : Colors.grey,
      ),
      trailingIcon: trailingIcon,
      onSelected: onSelected,
    );
  }
}
