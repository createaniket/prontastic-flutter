import 'package:flutter/material.dart';
import 'package:prontastic/themes/custom_text_theme.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextStyle? style;
  final int maxlines;

  const TextWidget(
      {super.key,
      this.text = '',
      this.textAlign = TextAlign.start,
        this.maxlines = 20, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxlines,
        textAlign: textAlign, style: style ?? context.displaySmall);
  }
}
