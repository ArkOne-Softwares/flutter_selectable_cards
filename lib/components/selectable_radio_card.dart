import 'package:flutter/material.dart';
import 'package:flutter_selectable_cards/index_inherit_selected.dart';

class RadioCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final int index;

  const RadioCard({
    super.key,
    required this.title,
    this.subtitle = "",
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final bool selected = SelectedIndexInheritedWidget.of(context)
            ?.selectedIndex
            .contains(index) ??
        false;

    // Use the selectedIndex as needed in your widget
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: selected ? Colors.green : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Icon(
            selected ? Icons.check_box : Icons.radio_button_unchecked,
            color: selected ? Colors.green : Colors.grey,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (subtitle.isNotEmpty) const SizedBox(height: 4.0),
                if (subtitle.isNotEmpty)
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
              ],
            ),
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1.0,
          ),
        ],
      ),
    );
  }
}
