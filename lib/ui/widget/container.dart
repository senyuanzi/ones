import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContainerX on Container {
  Container align(AlignmentGeometry? alignment) {
    return copyWith(alignment: alignment);
  }

  Container transformAlign(AlignmentGeometry? alignment) {
    return copyWith(transformAlignment: alignment);
  }

  //__________________ 优化 roundedCorner _______________________
  //__________________ optimized roundedCorner _______________________

  Container roundedCorner(double radius) {
    late Decoration mergeDecoration;
    if (decoration is BoxDecoration) {
      mergeDecoration = (decoration as BoxDecoration).copyWith(borderRadius: BorderRadius.circular(radius));
    } else {
      //todo 调整优化
      mergeDecoration = BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      );
    }

    return copyWith(decoration: mergeDecoration);
  }

  //__________________ 优化 border _______________________
  //__________________ optimized border _______________________

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

  //__________________ 优化 color _______________________
  //__________________ optimized color _______________________

  Container backgroundColor(Color color) {
    return copyWith(color: color);
  }

  Container backgroundColorInt(int color) {
    return copyWith(color: Color(color));
  }

  Container linearGradientColor(List<Color> colors, {AlignmentGeometry begin = Alignment.centerLeft, AlignmentGeometry end = Alignment.centerRight}) {
    var newGradient = LinearGradient(colors: colors, begin: begin, end: end);
    // late Decoration newDecoration;
    if (decoration is BoxDecoration) {
      var newDecoration = (decoration as BoxDecoration).copyWith(gradient: newGradient);
      return copyWith(decoration: newDecoration);
    }
    // if (decoration is ShapeDecoration) {
    // var newDecoration = (decoration as ShapeDecoration).copyWith(gradient: newGradient);
    //   return copyWith(decoration: newDecoration);
    // }
    //todo 可以继续优化??
    return Container(child: this, decoration: BoxDecoration(gradient: LinearGradient(colors: colors, begin: begin, end: end)));
  }

  //__________________ 优化 padding _______________________
  //__________________ optimized padding _______________________

  Container paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return copyWith(padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom));
  }

  Container paddingAll(size) {
    return copyWith(padding: EdgeInsets.only(left: size, top: size, right: size, bottom: size));
  }

  Container paddingLeft(size) {
    return copyWith(padding: EdgeInsets.only(left: size));
  }

  Container paddingTop(size) {
    return copyWith(padding: EdgeInsets.only(top: size));
  }

  Container paddingRight(size) {
    return copyWith(padding: EdgeInsets.only(right: size));
  }

  Container paddingBottom(size) {
    return copyWith(padding: EdgeInsets.only(bottom: size));
  }

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
