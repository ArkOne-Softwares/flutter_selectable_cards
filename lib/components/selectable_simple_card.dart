
import 'package:flutter/material.dart';
import 'package:flutter_selectable_cards/index_inherit_selected.dart';

class SimpleCard extends StatelessWidget {
  final Widget child;
  final int index;
  final Color borderColor;
  final Color selectedBorderColor;

  const SimpleCard({
    super.key,
    required this.child,
    required this.index,
    this.borderColor = Colors.grey,
    this.selectedBorderColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    final bool selected = SelectedIndexInheritedWidget.of(context)?.selectedIndex.contains(index) ?? false;

    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: selected ? selectedBorderColor : borderColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: child,
    );
  }
}