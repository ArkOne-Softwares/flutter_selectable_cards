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
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: SelectableCards(
              children: const [
                SimpleCard(
                  index: 0,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Card 1'),
                  ),
                ),
                SimpleCard(
                  index: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Card 2'),
                  ),
                ),
                RadioCard(title: "Test", subtitle: "Test", index: 2),
              ],
              onSelected: (index) {
                print('Selected card: $index');
              }),
        ),
      ),
    );
  }
}
