import 'package:flutter/material.dart';

extension ShadowX<T extends Widget> on T {
  Container shadowIs({Color color = Colors.black12, double borderRadius = 0, double blurRadius = 15, double spreadRadius = 1, Offset offset = const Offset(4.0, 8.0)}) {
    return Container(
      child: this,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
              color: color,
              offset: offset, //阴影xy轴偏移量
              blurRadius: blurRadius, //阴影模糊程度
              spreadRadius: spreadRadius //阴影扩散程度
              )
        ],
      ),
    );
  }

  Container multiShadow(List<BoxShadow> shadows, {Color color = Colors.black12, double borderRadius = 0}) {
    return Container(
      child: this,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(borderRadius), boxShadow: [...shadows]),
    );
  }
}
