
import 'package:flutter/material.dart';

class ErrorMessage {
  static errorMsg(String errorMsg) {
    return Center(
        child: Text(errorMsg,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            )));
  }
}
