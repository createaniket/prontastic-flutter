import 'package:flutter/material.dart';
import 'package:prontastic/themes/custom_text_theme.dart';
import '../constants/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final double width;
  final Color? buttonColor;
  final Color? borderColor;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? textColor;
  final GestureTapCallback onTap;
  final IconData? icon;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final bool showIcon;

  const ButtonWidget(
      {super.key,
      required this.buttonText,
      this.buttonColor = AppColors.limeGreen,
      this.borderColor = AppColors.limeGreen,
      this.textColor = AppColors.black,
        this.fontSize = 18,
        this.fontWeight = FontWeight.w600,
        required this.onTap,
        required this.width,
        this.icon,
        this.padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
        this.margin = const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
  this.showIcon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        width: width,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: AppColors.limeGreen, width: 0)
        ),
        child: Text(buttonText, style: context.displayLarge.copyWith(fontSize: fontSize, color: textColor, fontWeight: fontWeight)));
  }
}
