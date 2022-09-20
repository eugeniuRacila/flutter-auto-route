import 'package:bristoli_ui/bristoli_ui.dart';
import 'package:flutter/widgets.dart';

class AppButton extends StatelessWidget {
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final String text;

  const AppButton.primary(
    this.text, {
    super.key,
    this.backgroundColor = AppColors.red,
    this.margin,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () async {
          if (onTap != null) {
            onTap!();
          }
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            color: backgroundColor,
          ),
          margin: margin,
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
          width: double.infinity,
          child: Center(
            child: AppText.button(
              text,
              color: AppColors.white,
            ),
          ),
        ),
      );
}
