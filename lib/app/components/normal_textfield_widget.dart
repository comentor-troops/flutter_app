import 'package:flutter/material.dart';

class NormalTextFieldWidget extends StatelessWidget {
  const NormalTextFieldWidget({
    super.key,
    this.hintText,
    required this.icon,
    required this.obscureText,
    this.controller,
    this.suffixIcon,
    required this.title,
    this.fillColor = const Color(0xffF8F8F8),
  });

  final String? hintText;
  final String title;
  final IconData icon;
  final bool obscureText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: fillColor,
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14),
            suffixIcon: suffixIcon,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  size: 22,
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
          ),
        ),
      ],
    );
  }
}
