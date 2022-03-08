import 'package:flutter/material.dart';
import 'package:ones/ui/scrollable.dart';

extension CollectionX<T extends Widget> on T {
  SingleChildScrollView repeat(int number, {Axis direction = Axis.vertical}) {
    var list = <T>[];
    for (int i = 0; i < number; i++) {
      list.add(this);
    }

    return [...list].scrollable(direction: direction);
  }
}
