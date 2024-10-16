import 'package:flutter/material.dart';
import 'package:flutter_selectable_cards/index_inherit_selected.dart';

class CardWithImage extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final int index;

  const CardWithImage(
      {required this.text, required this.imageUrl, required this.subtitle, super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final selected = SelectedIndexInheritedWidget.of(context)?.selectedIndex != null &&
        SelectedIndexInheritedWidget.of(context)!.selectedIndex == index;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 75,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(offset: const Offset(10, 20), blurRadius: 10, spreadRadius: 0, color: Colors.grey.withOpacity(.05)),
        ],
      ),
      child: Row(
        children: [
          Image.network(imageUrl, height: 59, fit: BoxFit.cover),
          const SizedBox(
            width: 15,
          ),
          Text(text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
          const Spacer(),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
