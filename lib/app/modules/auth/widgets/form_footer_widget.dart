import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FormFooterWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final VoidCallback onPressed;

  const FormFooterWidget({
    super.key,
    this.title,
    this.subtitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: subtitle,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          ),
        ],
      ),
    );
  }
}
