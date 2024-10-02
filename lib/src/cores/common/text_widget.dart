import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key, required this.title, this.textAlign, this.style});
  final String title;

  final TextAlign? textAlign;

  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign ?? TextAlign.left,
        softWrap: true,
        style: style ?? Theme.of(context).textTheme.titleMedium);
  }
}
