import 'package:flutter/material.dart';

class NormalButtonWidget extends StatelessWidget {
  const NormalButtonWidget({
    super.key,
    required this.title,
    this.onPressed,
    this.backgroundColor,
    this.titleColor,
  });

  final String title;
  final Color? backgroundColor;
  final Color? titleColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minimumSize: const Size(double.infinity, 50),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
