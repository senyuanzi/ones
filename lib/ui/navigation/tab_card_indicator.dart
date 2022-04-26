import 'package:flutter/material.dart';

///color和gradientColors不能同时共存
///当color存在时，优先使用color
class TabCardIndicator extends BoxDecoration {
  TabCardIndicator({double radius = 12, Color? color, List<Color>? gradientColors})
      : super(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          color: color,
          gradient: color == null ? LinearGradient(colors: gradientColors ?? [const Color(0xff796aff), const Color(0xff796aff)]) : null,
        );
}

// const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)), gradient: LinearGradient(colors: [Color(0xff796aff), Color(0xff796aff)]))
