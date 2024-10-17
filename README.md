# Flutter Selectable Cards

Flutter Selectable Radio Cards and Checkbox Cards UI. Easily create radio and checkbox cards with
custom styles for your onboarding screens, forms, or any other use case.

## Getting Started

### 1. Add the dependency

```yaml
dependencies:
  flutter_selectable_cards: ^0.0.1
```

### 2. Import and use the package

```dart
import 'package:flutter_selectable_cards/flutter_selectable_cards.dart';
```

### 3. Use the `SelectableCard` widget

```dart
SelectableCards
(
isMultipleSelection: false,
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
}
)
,
```

### 4. Use different layouts

```dart
SelectableCards
(
layout: const LayoutColumn(
crossAxisAlignment: CrossAxisAlignment.start,
),
children: []
),

SelectableCards(
layout: const LayoutRow(),
children: []
),

SelectableCards(
layout: const LayoutWrap(
crossAxisAlignment: WrapCrossAlignment.center,
),
children: [
]
)
,
```