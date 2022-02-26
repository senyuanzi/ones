import 'package:flutter/material.dart';
import 'package:ones/ui.dart';

extension RelationX<T extends Widget> on T {
  relation(double offsetX, double offsetY, List<Widget> widgets) {
    return Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [this, ...widgets.map((e) => e.translate(offsetX, offsetY))]);
  }

  relationOne(double offsetX, double offsetY, Widget widget) {
    return relation(offsetX, offsetY, [widget]);
  }
}
