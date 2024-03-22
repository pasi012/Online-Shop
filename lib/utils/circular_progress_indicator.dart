
import 'package:flutter/material.dart';

class CircularProgressIndicatorClass {
  static circularProgressIndicator(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}