import 'package:flutter/material.dart';

class FormTitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const FormTitleWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
