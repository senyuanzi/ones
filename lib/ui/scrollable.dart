import 'package:flutter/material.dart';
import 'package:ones/ui.dart';

extension ScrollableX<T extends Widget> on T {
  SingleChildScrollView scrollable({Axis direction = Axis.vertical}) {
    return SingleChildScrollView(scrollDirection: direction, child: this);
  }
}

extension MultiWidgetScrollableX<T extends List> on T {
  SingleChildScrollView scrollable({Axis direction = Axis.vertical}) {
    return SingleChildScrollView(
      scrollDirection: direction,
      child: direction == Axis.vertical ? Column(children: [...this]) : Row(children: [...this]),
    );
  }
}
