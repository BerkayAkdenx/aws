import 'package:flutter/material.dart';

abstract class BaseTextStyle {
  // ignore: non_constant_identifier_names
  static TextStyle get BaseWhiteText {
    return const TextStyle(
        fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
  }

  // ignore: non_constant_identifier_names
  static TextStyle get SmallWhiteText {
    return const TextStyle(
        fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold);
  }
}
