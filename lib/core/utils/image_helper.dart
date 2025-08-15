import 'package:flutter/material.dart';

class ImageHelper {
  static customImage({required String img}) {
    return Image.asset(
      'assets/images/$img');
  }
}
