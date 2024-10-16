import 'package:flutter/material.dart';
import 'package:flutter_selectable_cards/components/layout.dart';
import 'index_inherit_selected.dart';

class SelectableCards extends StatefulWidget {
  final List<Widget> children;
  final ValueChanged<int> onSelected;
  final Color borderColor;
  final Color selectedBorderColor;
  final Layout layout;

  const SelectableCards({
    super.key,
    required this.children,
    required this.onSelected,
    this.borderColor = Colors.grey,
    this.selectedBorderColor = Colors.blue,
    this.layout = const LayoutWrap(),
  });

  @override
  _SelectableCardsState createState() => _SelectableCardsState();
}

class _SelectableCardsState extends State<SelectableCards> {
  int? _selectedIndex;

  void _onCardTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    final updatedChildren = List<Widget>.generate(widget.children.length, (int index) {
      return GestureDetector(
        onTap: () => _onCardTap(index),
        child: widget.children[index],
      );
    });

    final updatedLayout = widget.layout is LayoutWrap
        ? Wrap(
            key: widget.layout.key,
            direction: (widget.layout as LayoutWrap).direction,
            alignment: (widget.layout as LayoutWrap).alignment,
            spacing: (widget.layout as LayoutWrap).spacing,
            runAlignment: (widget.layout as LayoutWrap).runAlignment,
            runSpacing: (widget.layout as LayoutWrap).runSpacing,
            crossAxisAlignment: (widget.layout as LayoutWrap).crossAxisAlignment,
            textDirection: (widget.layout as LayoutWrap).textDirection,
            verticalDirection: (widget.layout as LayoutWrap).verticalDirection,
            children: updatedChildren,
          )
        : widget.layout is LayoutRow
            ? Row(
                key: widget.layout.key,
                mainAxisAlignment: (widget.layout as LayoutRow).mainAxisAlignment,
                mainAxisSize: (widget.layout as LayoutRow).mainAxisSize,
                crossAxisAlignment: (widget.layout as LayoutRow).crossAxisAlignment,
                textDirection: (widget.layout as LayoutRow).textDirection,
                verticalDirection: (widget.layout as LayoutRow).verticalDirection,
                textBaseline: (widget.layout as LayoutRow).textBaseline,
                children: updatedChildren,
              )
            : Column(
                key: widget.layout.key,
                mainAxisAlignment: (widget.layout as LayoutColumn).mainAxisAlignment,
                mainAxisSize: (widget.layout as LayoutColumn).mainAxisSize,
                crossAxisAlignment: (widget.layout as LayoutColumn).crossAxisAlignment,
                textDirection: (widget.layout as LayoutColumn).textDirection,
                verticalDirection: (widget.layout as LayoutColumn).verticalDirection,
                textBaseline: (widget.layout as LayoutColumn).textBaseline,
                children: updatedChildren,
              );

    return SelectedIndexInheritedWidget(
      selectedIndex: _selectedIndex,
      child: updatedLayout,
    );
  }
}
