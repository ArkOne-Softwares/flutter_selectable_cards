import 'package:flutter/material.dart';

class SelectedIndexInheritedWidget extends InheritedWidget {
  final List<int> selectedIndex;
  final int numberOfSelectedIndices;

  @override
  final Widget child;

  const SelectedIndexInheritedWidget({
    super.key,
    required this.selectedIndex,
    required this.numberOfSelectedIndices,
    required this.child,
  }) : super(child: child);

  static SelectedIndexInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SelectedIndexInheritedWidget>();
  }

  @override
  bool updateShouldNotify(SelectedIndexInheritedWidget oldWidget) {
    return oldWidget.selectedIndex != selectedIndex ||
        oldWidget.numberOfSelectedIndices != numberOfSelectedIndices;
  }
}
