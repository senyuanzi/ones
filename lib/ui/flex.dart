import 'package:flutter/material.dart';
import 'package:ones/ui.dart';

extension MultiWidgetFlexX<T extends List<Widget>> on T {
  inFlexibleRow() {
    return Row(children: this).flexible();
  }

  inFlexibleColumn() {
    return Row(children: this).flexible();
  }
}

extension FlexX<T extends Widget> on T {
  Flexible flexible({
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) {
    return Flexible(flex: flex, fit: fit, child: this);
  }

  Expanded expanded() {
    return Expanded(child: this);
  }
}
