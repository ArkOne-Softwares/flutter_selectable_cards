import 'package:flutter/material.dart';
import 'package:flutter_selectable_cards/flutter_selectable_cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Selectable Cards Example'),
        ),
        body: Center(
          child: SelectableCards(
              isMultipleSelection: true,
              layout: const LayoutWrap(),
              children: const [
                SimpleCard(
                  index: 0,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Select Card 1'),
                  ),
                ),
                SimpleCard(
                  index: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Select Card 2'),
                  ),
                ),
              ],
              onSelected: (index) {
                print('Main.dart Selected card: $index');
              }),
        ),
      ),
    );
  }
}
