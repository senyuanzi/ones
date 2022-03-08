import 'package:flutter/material.dart';

extension CardX on Card {
  Card colorIs(Color color) {
    return copyWith(color: color);
  }

  Card colorInt(int color) {
    return copyWith(color: Color(color));
  }

  Card shadowColorIs(Color color) {
    return copyWith(shadowColor: color);
  }

  Card shadowColorInt(int color) {
    return copyWith(shadowColor: Color(color));
  }

  Card elevationIs(double elevation) {
    return copyWith(elevation: elevation);
  }

  Card shapeIs(ShapeBorder shape) {
    return copyWith(shape: shape);
  }

  Card borderOnForegroundIs(bool borderOnForeground) {
    return copyWith(borderOnForeground: borderOnForeground);
  }

  Card marginIs({double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return copyWith(margin: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom));
  }

  Card clipBehaviorIs(Clip clipBehavior) {
    return copyWith(clipBehavior: clipBehavior);
  }

  Card semanticContainerIs(bool semanticContainer) {
    return copyWith(semanticContainer: semanticContainer);
  }

  Card copyWith({
    Key? key,
    Color? color,
    Color? shadowColor,
    double? elevation,
    ShapeBorder? shape,
    bool? borderOnForeground,
    EdgeInsetsGeometry? margin,
    Clip? clipBehavior,
    Widget? child,
    bool? semanticContainer,
  }) {
    return Card(
      key: key ?? this.key,
      color: color ?? this.color,
      shadowColor: shadowColor ?? this.shadowColor,
      elevation: elevation ?? this.elevation,
      shape: shape ?? this.shape,
      borderOnForeground: borderOnForeground ?? this.borderOnForeground,
      margin: margin ?? this.margin,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      child: child ?? this.child,
      semanticContainer: semanticContainer ?? this.semanticContainer,
    );
  }
}
