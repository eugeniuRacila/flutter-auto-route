import 'package:bristoli_ui/shared/app_colors.dart';
import 'package:bristoli_ui/shared/app_styles.dart';
import 'package:flutter/widgets.dart';

class AppText extends StatelessWidget {
  final bool? isFlexible;
  final int? maxLines;
  final TextStyle style;
  final String text;
  final TextAlign? textAlign;

  AppText.h1(
    this.text, {
    super.key,
    Color color = AppColors.black,
    this.isFlexible,
    this.maxLines,
    this.textAlign,
  }) : style = heading1Style.copyWith(color: color);

  AppText.h3(
    this.text, {
    super.key,
    Color color = AppColors.black,
    this.isFlexible,
    this.maxLines,
    this.textAlign,
  }) : style = heading3Style.copyWith(color: color);

  AppText.h4(
    this.text, {
    super.key,
    Color color = AppColors.black,
    this.isFlexible,
    this.maxLines,
    this.textAlign,
  }) : style = heading4Style.copyWith(color: color);

  AppText.title(
    this.text, {
    super.key,
    Color color = AppColors.black,
    this.isFlexible,
    this.maxLines,
    this.textAlign,
  }) : style = titleStyle.copyWith(color: color);

  AppText.button(
    this.text, {
    super.key,
    Color color = AppColors.black,
    this.isFlexible,
    this.maxLines,
    this.textAlign,
  }) : style = buttonStyle.copyWith(color: color);

  AppText.body17(
    this.text, {
    super.key,
    Color color = AppColors.black,
    this.isFlexible,
    this.maxLines,
    this.textAlign,
  }) : style = body17Style.copyWith(color: color);

  AppText.body15(
    this.text, {
    super.key,
    Color color = AppColors.black,
    this.isFlexible,
    this.maxLines,
    this.textAlign,
  }) : style = body15Style.copyWith(color: color);

  AppText.body13(
    this.text, {
    super.key,
    Color color = AppColors.black,
    this.isFlexible,
    this.maxLines,
    this.textAlign,
  }) : style = body13Style.copyWith(color: color);

  AppText.caption(
    this.text, {
    super.key,
    Color color = AppColors.black,
    this.isFlexible,
    this.maxLines,
    this.textAlign,
  }) : style = captionStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    if (isFlexible != null && isFlexible!) {
      return Flexible(
        child: _customText(),
      );
    }

    return _customText();
  }

  Text _customText() => Text(
        text,
        maxLines: maxLines,
        style: style,
        textAlign: textAlign ?? TextAlign.start,
      );
}
