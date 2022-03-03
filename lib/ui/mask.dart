import 'package:flutter/material.dart';
import 'package:ones/ui.dart';

extension MaskX<T extends Widget> on T {
  Stack mask(Widget maskWidget) {
    return Stack(children: [this, maskWidget.positioned(left: 0, top: 0, bottom: 0, right: 0)]);
  }
}
