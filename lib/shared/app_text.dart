import 'package:flutter/material.dart';

/// A Text widget wrapper for quick customizations
class AppText extends StatelessWidget {
  const AppText(
    this.data, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.fontSize,
    this.fontWeight,
    this.color,
  });

  const AppText.heading1(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : style = const TextStyle(fontSize: 32, fontWeight: FontWeight.w700);

  const AppText.heading2(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : style = const TextStyle(fontSize: 24, fontWeight: FontWeight.w600);

  const AppText.title1(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : style = const TextStyle(fontSize: 20, fontWeight: FontWeight.w500);

  const AppText.title2(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : style = const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

  const AppText.title3(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : style = const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  const AppText.body1(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : style = const TextStyle(fontSize: 16, fontWeight: FontWeight.normal);

  const AppText.body2(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : style = const TextStyle(fontSize: 14, fontWeight: FontWeight.normal);

  const AppText.label(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : style = const TextStyle(fontSize: 14, fontWeight: FontWeight.w400);

  const AppText.caption(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : style = const TextStyle(fontSize: 12, color: Colors.grey);
  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool softWrap;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final TextStyle inheritedStyle = DefaultTextStyle.of(context).style;
    final TextStyle mergedStyle = inheritedStyle.merge(style);
    final TextStyle effectiveStyle = mergedStyle
        .merge(style)
        .copyWith(fontSize: fontSize, fontWeight: fontWeight, color: color);

    return Text(
      data,
      style: effectiveStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
    );
  }
}
