import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/init.dart';
import '../utils/app_colors.dart';

class PaymentOptionButton extends ConsumerWidget {
  final String title;
  final String title2;
  final String title3;
  final int index;

  const PaymentOptionButton({
    Key? key,
    required this.title,
    required this.title2,
    required this.title3,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paymentProvider = ref.watch(paymentButtonProvider);

    bool selected = paymentProvider.paymentIndex == index;
    return InkWell(
      onTap: () => paymentProvider.setPaymentIndex(index),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: selected
                ? Container(
                    width: 120,
                    height: 20,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                        color: AppColors.primaryColor),
                    child: const Center(
                        child: Text(
                      "Recommended",
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                : Container(),
          ),
          Container(
            height: 90,
            decoration: BoxDecoration(
              border: selected
                  ? Border.all(width: 2, color: AppColors.primaryColor)
                  : null,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title2),
                        selected
                            ? const Icon(Icons.check,
                                color: AppColors.primaryColor)
                            : Container()
                      ],
                    ),
                    Text(title3)
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
