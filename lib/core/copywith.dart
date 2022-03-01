import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContainerCopyWithX on Container {
  ///width and height no getter
  Container copyWith({
    Key? key,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Widget? child,
    Clip? clipBehavior,
  }) {
    return Container(
        key: key ?? this.key,
        alignment: alignment ?? this.alignment,
        padding: padding ?? this.padding,
        color: color ?? this.color,
        decoration: decoration ?? this.decoration,
        foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
        width: width,
        //no getter
        height: height,
        //no getter
        constraints: constraints ?? this.constraints,
        margin: margin ?? this.margin,
        transform: transform ?? this.transform,
        transformAlignment: transformAlignment ?? this.transformAlignment,
        child: child ?? this.child,
        clipBehavior: clipBehavior ?? this.clipBehavior);
  }
}

extension TextFormFieldCopyWithX on TextFormField {}
