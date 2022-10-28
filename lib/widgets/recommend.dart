import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class Recommend extends StatelessWidget {
  const Recommend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 20,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
          color: AppColors.primaryColor),
      child: const Center(
          child: Text(
        "Recommended",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
