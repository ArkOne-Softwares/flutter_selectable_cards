import 'package:flutter/widgets.dart';

abstract class Layout extends Widget {
  const Layout({super.key, required this.children});

  final List<Widget> children;
}

class LayoutColumn extends Column implements Layout {
  const LayoutColumn(
      {super.key,
      super.mainAxisAlignment,
      super.mainAxisSize,
      super.crossAxisAlignment,
      super.textDirection,
      super.verticalDirection,
      super.textBaseline});
}

class LayoutRow extends Row implements Layout {
  const LayoutRow(
      {super.key,
      super.mainAxisAlignment,
      super.mainAxisSize,
      super.crossAxisAlignment,
      super.textDirection,
      super.verticalDirection,
      super.textBaseline});
}

class LayoutWrap extends Wrap implements Layout {
  const LayoutWrap(
      {super.key,
      super.direction,
      super.alignment,
      super.spacing,
      super.runAlignment,
      super.runSpacing,
      super.crossAxisAlignment,
      super.textDirection,
      super.verticalDirection});
}
