import 'package:flutter/material.dart';

class BaseTextWidget extends StatelessWidget {
  const BaseTextWidget({
    super.key,
    required this.text,
    required this.style,
  });

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
