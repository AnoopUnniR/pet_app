import 'package:flutter/material.dart';

customShowDialogue({required BuildContext context, required String message}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}

const Color backgroundColor = Color(0xFF87CEEB);
