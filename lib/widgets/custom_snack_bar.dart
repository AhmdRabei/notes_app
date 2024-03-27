import 'package:flutter/material.dart';

void costomSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Center(
          child: Text(
    message,
    style: const TextStyle(
      fontSize: 16,
    ),
  ))));
}
