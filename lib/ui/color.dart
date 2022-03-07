import 'package:flutter/material.dart';

extension ColorX<T extends Widget> on T {
  Container backgroundColor(Color color) {
    return Container(child: this, color: color);
  }

  Container backgroundColorInt(int color) {
    return Container(child: this, color: Color(color));
  }

  Container linearGradientColor(List<Color> colors, {AlignmentGeometry begin = Alignment.centerLeft, AlignmentGeometry end = Alignment.centerRight}) {
    return Container(child: this, decoration: BoxDecoration(gradient: LinearGradient(colors: colors, begin: begin, end: end)));
  }
}
