import 'package:flutter/material.dart';
import '/extension/scope_ex.dart';
import '/values/colors.dart';

class RRectButton extends StatelessWidget {
  const RRectButton(
    this.text, {
    Key? key,
    this.width = 64,
    this.height = 32,
    this.radius = 12,
    this.textColor,
    this.fontSize,
    this.backgroundColor = Colors.transparent,
    this.gradientColors = const [Color(0xFF9AEDE2), Color(0xFF89D9EA)],
    this.onPressed,
  }) : super(key: key);

  final String text;
  final double width;
  final double height;
  final Color? textColor;
  final double? fontSize;
  final Color? backgroundColor;
  final List<Color>? gradientColors;

  final double radius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: gradientColors?.let((it) => LinearGradient(colors: gradientColors!)),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: textColor?.let((it) => TextStyle(color: textColor, fontSize: fontSize)),
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
          ),
        ),
      ),
    );
  }
}

class RRectOutlinedButton extends StatelessWidget {
  const RRectOutlinedButton(
    this.text, {
    Key? key,
    this.width = 64,
    this.height = 32,
    this.radius = 12,
    this.textColor,
    this.fontSize,
    this.backgroundColor = Colors.transparent,
    this.gradientColors,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final double width;
  final double height;
  final Color? textColor;
  final double? fontSize;
  final Color? backgroundColor;
  final List<Color>? gradientColors;

  final double radius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: gradientColors?.let((it) => LinearGradient(colors: gradientColors!)),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: fontSize),
          ),
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
            side: BorderSide(color: ColorsValue.blue, style: BorderStyle.solid),
            backgroundColor: backgroundColor,
          ),
        ),
      ),
    );
  }
}

extension ElevatedButtonX on ElevatedButton {
  ElevatedButton elevation(double size) {
    var newStyle = ButtonStyle(elevation: MaterialStateProperty.all(size));
    var merge = style?.merge(newStyle) ?? newStyle;
    return copyWith(style: merge);
  }

  ElevatedButton color(Color color) {
    var newStyle = ButtonStyle(backgroundColor: MaterialStateProperty.all(color));
    var merge = style?.merge(newStyle) ?? newStyle;
    return copyWith(style: merge);
  }

  ElevatedButton linearGradientColor(List<Color> colors) {
    var newStyle = ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent));
    var merge = style?.merge(newStyle) ?? newStyle;
    var button = copyWith(style: merge);
    return button.linearGradientColor(colors);
  }

  ElevatedButton copyWith({
    Key? key,
    void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    Widget? child,
  }) {
    return ElevatedButton(
      key: key ?? this.key,
      onPressed: onPressed ?? this.onPressed,
      onLongPress: onLongPress ?? this.onLongPress,
      onHover: onHover ?? this.onHover,
      onFocusChange: onFocusChange ?? this.onFocusChange,
      style: style ?? this.style,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      child: child ?? this.child,
    );
  }
}

extension OutlinedButtonX on OutlinedButton {
  OutlinedButton elevation(double size) {
    var newStyle = ButtonStyle(elevation: MaterialStateProperty.all(size));
    var merge = style?.merge(newStyle) ?? newStyle;
    return copyWith(style: merge);
  }

  OutlinedButton color(Color color) {
    var newStyle = ButtonStyle(backgroundColor: MaterialStateProperty.all(color));
    var merge = style?.merge(newStyle) ?? newStyle;
    return copyWith(style: merge);
  }

  OutlinedButton linearGradientColor(List<Color> colors) {
    var newStyle = ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent));
    var merge = style?.merge(newStyle) ?? newStyle;
    var button = copyWith(style: merge);
    return button.linearGradientColor(colors);
  }

  OutlinedButton copyWith({
    Key? key,
    void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    Widget? child,
  }) {
    return OutlinedButton(
      key: key ?? this.key,
      onPressed: onPressed ?? this.onPressed,
      onLongPress: onLongPress ?? this.onLongPress,
      onHover: onHover ?? this.onHover,
      onFocusChange: onFocusChange ?? this.onFocusChange,
      style: style ?? this.style,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      child: child ?? this.child!,
    );
  }
}

extension TextButtonX on TextButton {
  TextButton elevation(double size) {
    var newStyle = ButtonStyle(elevation: MaterialStateProperty.all(size));
    var merge = style?.merge(newStyle) ?? newStyle;
    return copyWith(style: merge);
  }

  TextButton color(Color color) {
    var newStyle = ButtonStyle(backgroundColor: MaterialStateProperty.all(color));
    var merge = style?.merge(newStyle) ?? newStyle;
    return copyWith(style: merge);
  }

  TextButton linearGradientColor(List<Color> colors) {
    var newStyle = ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent));
    var merge = style?.merge(newStyle) ?? newStyle;
    var button = copyWith(style: merge);
    return button.linearGradientColor(colors);
  }

  TextButton copyWith({
    Key? key,
    void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    Widget? child,
  }) {
    return TextButton(
      key: key ?? this.key,
      onPressed: onPressed ?? this.onPressed,
      onLongPress: onLongPress ?? this.onLongPress,
      onHover: onHover ?? this.onHover,
      onFocusChange: onFocusChange ?? this.onFocusChange,
      style: style ?? this.style,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      child: child ?? this.child!,
    );
  }
}
