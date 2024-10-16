import 'package:flutter/widgets.dart';
import 'package:flutter_selectable_cards/components/types.dart';

abstract class Layout extends Widget {
  Layout({super.key, required this.children});

  late List<Widget> children;
}

class LayoutColumn extends Column implements Layout {
  const LayoutColumn({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    // super.children,
  });

  @override
  set children(List<Widget> _children) {
    children = _children;
  }
}

class LayoutRow extends Row implements Layout {
  const LayoutRow({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    // super.children,
  });

  @override
  set children(List<Widget> _children) {
    children = _children;
  }
}

class LayoutWrap extends Wrap implements Layout {
  const LayoutWrap({
    super.key,
    super.direction,
    super.alignment,
    super.spacing,
    super.runAlignment,
    super.runSpacing,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    // super.children,
  });

  @override
  set children(List<Widget> _children) {
    children = _children;
  }
}
