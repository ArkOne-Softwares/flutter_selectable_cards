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

  List selectedImageMulti = [];
  int selectedImageSingle = -1;
  int anyWidgetSelected = -1;
  int anyWidgetSelectedRow = -1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Selectable Example'),
        ),
        body: DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              const TabBar(
                isScrollable: true,
                enableFeedback: true,
                padding: EdgeInsets.zero,
                mouseCursor: MaterialStateMouseCursor.clickable,
                tabs: [
                  Tab(text: 'Selectable Cards'),
                  Tab(text: 'Selectable Radio'),
                  Tab(text: 'Selectable Card With Image'),
                  Tab(text: 'Any Widget'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Multi-Select Cards',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: SelectableCards(
                                isMultipleSelection: true,
                                layout: const LayoutWrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center),
                                children: const [
                                  SimpleCard(
                                    index: 0,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Multi Select Card 1'),
                                    ),
                                  ),
                                  SimpleCard(
                                    index: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Multi Select Card 2'),
                                    ),
                                  ),
                                ],
                                onSelected: (index) {
                                  print('Main.dart Selected card: $index');
                                },
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Single-Select Cards',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: SelectableCards(
                                isMultipleSelection: false,
                                layout: const LayoutWrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center),
                                children: const [
                                  SimpleCard(
                                    index: 0,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Select Single Card 1'),
                                    ),
                                  ),
                                  SimpleCard(
                                    index: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Select Single Card 2'),
                                    ),
                                  ),
                                ],
                                onSelected: (index) {
                                  print(
                                      'Main.dart Selected single card: $index');
                                },
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Column Layout Examples',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Multi-Select Column Layout',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            LayoutColumnExample(isMultipleSelection: true),
                            const SizedBox(height: 20),
                            const Text(
                              'Single-Select Column Layout',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            LayoutColumnExample(isMultipleSelection: false),
                            const SizedBox(height: 20),
                            const Text(
                              'Row Layout Examples',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Multi-Select Row Layout',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            LayoutRowExample(isMultipleSelection: true),
                            const SizedBox(height: 20),
                            const Text(
                              'Single-Select Row Layout',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            LayoutRowExample(isMultipleSelection: false),
                            const SizedBox(height: 20),
                            const Text(
                              'Wrap Layout Examples',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Multi-Select Wrap Layout',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            LayoutWrapExample(isMultipleSelection: true),
                            const SizedBox(height: 20),
                            const Text(
                              'Single-Select Wrap Layout',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            LayoutWrapExample(isMultipleSelection: false),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Multi-Select Cards with Radio Design',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: SelectableCards(
                                isMultipleSelection: true,
                                layout: const LayoutWrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center),
                                children: const [
                                  RadioCard(
                                    index: 0,
                                    title: 'Radio Card 1',
                                    subtitle: 'Radio Card 1 Subtitle',
                                  ),
                                  RadioCard(
                                    index: 1,
                                    title: 'Radio Card 2',
                                    subtitle: 'Radio Card 2 Subtitle',
                                  ),
                                ],
                                onSelected: (index) {
                                  print('Main.dart Selected card: $index');
                                },
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Single-Select Cards with Radio Design',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: SelectableCards(
                                isMultipleSelection: false,
                                layout: const LayoutWrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center),
                                children: const [
                                  RadioCard(
                                    index: 0,
                                    title: 'Select Single Radio Card 1',
                                    subtitle:
                                        'Select Single Radio Card 1 Subtitle',
                                  ),
                                  RadioCard(
                                    index: 1,
                                    title: 'Select Single Radio Card 2',
                                    subtitle:
                                        'Select Single Radio Card 2 Subtitle',
                                  ),
                                ],
                                onSelected: (index) {
                                  print(
                                      'Main.dart Selected single card: $index');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Multi-Select Cards with Images',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: SelectableCards(
                                isMultipleSelection: true,
                                layout: const LayoutWrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center),
                                children: [
                                  CardWithImage(
                                    index: 0,
                                    imageUrl:
                                        'https://st2.depositphotos.com/1011969/6070/i/450/depositphotos_60704945-stock-photo-number-1.jpg',
                                    text:
                                        'Card With Image 1 ${selectedImageMulti.contains(0) ? 'Selected' : ''}',
                                  ),
                                  CardWithImage(
                                    index: 1,
                                    imageUrl:
                                        'https://st2.depositphotos.com/1011969/6070/i/450/depositphotos_60704955-stock-photo-number-2.jpg',
                                    text:
                                        'Card With Image 2 ${selectedImageMulti.contains(1) ? 'Selected' : ''}',
                                  ),
                                ],
                                onSelected: (index) {
                                  setState(() {
                                    selectedImageMulti = index;
                                  });
                                  print('Main.dart Selected card: $index');
                                },
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Single-Select Cards with Radio Design',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: SelectableCards(
                                isMultipleSelection: false,
                                layout: const LayoutWrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center),
                                children: [
                                  CardWithImage(
                                    index: 0,
                                    imageUrl:
                                        'https://st2.depositphotos.com/1011969/6070/i/450/depositphotos_60704945-stock-photo-number-1.jpg',
                                    text:
                                        'Single Card With Image 1 ${selectedImageSingle == 0 ? 'Selected' : ''}',
                                  ),
                                  CardWithImage(
                                    index: 1,
                                    imageUrl:
                                        'https://st2.depositphotos.com/1011969/6070/i/450/depositphotos_60704955-stock-photo-number-2.jpg',
                                    text:
                                        'Single Card With Image 2 ${selectedImageSingle == 1 ? 'Selected' : ''}',
                                  ),
                                ],
                                onSelected: (index) {
                                  setState(() {
                                    selectedImageSingle = index;
                                  });
                                  print(
                                      'Main.dart Selected single card: $index');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Any Widget',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Any Widget can be used with the SelectableCards',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Example with a Container',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            SelectableCards(
                              isMultipleSelection: false,
                              layout: const LayoutWrap(
                                  crossAxisAlignment:
                                      WrapCrossAlignment.center),
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  color: Colors.red,
                                  child: Center(
                                    child: Text(
                                        'Container 1 ${anyWidgetSelected == 0 ? 'Selected' : ''}'),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  color: Colors.blue,
                                  child: Center(
                                    child: Text(
                                        'Container 2 ${anyWidgetSelected == 1 ? 'Selected' : ''}'),
                                  ),
                                ),
                              ],
                              onSelected: (index) {
                                setState(() {
                                  anyWidgetSelected = index;
                                });
                                print('Main.dart Selected card: $index');
                              },
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Example with Text in LayoutRow',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            SelectableCards(
                              isMultipleSelection: false,
                              layout: const LayoutRow(
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Container 1 ${anyWidgetSelectedRow == 0 ? 'Selected' : ''}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Container 2 ${anyWidgetSelectedRow == 1 ? 'Selected' : ''}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              onSelected: (index) {
                                setState(() {
                                  anyWidgetSelectedRow = index;
                                });
                                print('Main.dart Selected card: $index');
                              },
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Any widget can be used inside SelectableCards and they can be used as MultiSelect or SingleSelect',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LayoutColumnExample extends StatelessWidget {
  final bool isMultipleSelection;

  const LayoutColumnExample({required this.isMultipleSelection});

  @override
  Widget build(BuildContext context) {
    return SelectableCards(
      isMultipleSelection: isMultipleSelection,
      layout: const LayoutColumn(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      children: const [
        SimpleCard(
          index: 0,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Column Card 1'),
          ),
        ),
        SimpleCard(
          index: 1,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Column Card 2'),
          ),
        ),
      ],
      onSelected: (index) {
        print('LayoutColumnExample Selected card: $index');
      },
    );
  }
}

class LayoutRowExample extends StatelessWidget {
  final bool isMultipleSelection;

  const LayoutRowExample({required this.isMultipleSelection});

  @override
  Widget build(BuildContext context) {
    return SelectableCards(
      isMultipleSelection: isMultipleSelection,
      layout: const LayoutRow(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      children: const [
        SimpleCard(
          index: 0,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Row Card 1'),
          ),
        ),
        SimpleCard(
          index: 1,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Row Card 2'),
          ),
        ),
      ],
      onSelected: (index) {
        print('LayoutRowExample Selected card: $index');
      },
    );
  }
}

class LayoutWrapExample extends StatelessWidget {
  final bool isMultipleSelection;

  const LayoutWrapExample({required this.isMultipleSelection});

  @override
  Widget build(BuildContext context) {
    return SelectableCards(
      isMultipleSelection: isMultipleSelection,
      layout: const LayoutWrap(
        crossAxisAlignment: WrapCrossAlignment.center,
      ),
      children: const [
        SimpleCard(
          index: 0,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Wrap Card 1'),
          ),
        ),
        SimpleCard(
          index: 1,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Wrap Card 2'),
          ),
        ),
      ],
      onSelected: (index) {
        print('LayoutWrapExample Selected card: $index');
      },
    );
  }
}
