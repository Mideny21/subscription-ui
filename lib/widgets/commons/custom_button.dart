import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback tap;
  final String text;
  final Color color;
  const CustomButton({
    Key? key,
    required this.tap,
    required this.text,
    this.color = AppColors.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        onPressed: tap,
        child: Text(text,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 0.8)),
      ),
    );
  }
}
