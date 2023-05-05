import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            const TextSpan(
              text: "By signing up, I agress to  ",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "the Terms of Service",
              style: const TextStyle(
                fontSize: 14,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()..onTap,
            ),
            const TextSpan(
              text: " and",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            const TextSpan(
              text: " Privacy Policy",
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
