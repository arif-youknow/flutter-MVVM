import 'package:flutter/material.dart';

class TextHelper {
  static customText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    required double fontsize,
  }) {
    return Text(text, style: TextStyle(
      color: color,
      fontSize: fontsize,
      fontWeight: fontweight



    ));
  }
}
