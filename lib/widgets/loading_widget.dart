import 'package:flutter/material.dart';

class LoadingWidget {
  LoadingWidget._();

  static const circularPrimary = SizedBox(
      width: 15, height: 15, child: CircularProgressIndicator(strokeWidth: 3));
  static const circularWhite = SizedBox(
      width: 15, height: 15, child: CircularProgressIndicator(strokeWidth: 3, backgroundColor: Colors.white));
}
