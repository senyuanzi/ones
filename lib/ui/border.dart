import 'package:flutter/material.dart';
import 'package:ones/core/copywith.dart';

extension BorderX<T extends Widget> on T {
  ///add border
  Container border({Color color = const Color(0xff95d9f1), double width = 1, double radius = 0}) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: color, width: width),
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        child: this);
  }

  ///add Circle border
  Container circleBorder({Color color = const Color(0xff95d9f1), double width = 1}) {
    return border(color: color, width: width, radius: 1000);
  }
}

///Container border
extension BorderContainerX on Container {

  ///container border
  ///目前只支持保持BoxDecoration的样式
  Container border({Color color = const Color(0xff95d9f1), double width = 1, double radius = 0}) {
    late Decoration mergeDecoration;
    if (decoration is BoxDecoration) {
      mergeDecoration = (decoration as BoxDecoration).copyWith(
        border: Border.all(color: color, width: width),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      );
    } else {
      mergeDecoration = BoxDecoration(
        border: Border.all(color: color, width: width),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      );
    }

    return copyWith(decoration: mergeDecoration);
  }

  ///add Circle border
  Container circleBorder({Color color = const Color(0xff95d9f1), double width = 1}) {
    return border(color: color, width: width, radius: 1000);
  }
}
