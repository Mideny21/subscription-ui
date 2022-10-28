import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/init.dart';
import '../utils/app_colors.dart';
import 'commons/custom_text_field.dart';

class PaymentOptionButton extends ConsumerWidget {
  final String title;
  final String title2;
  final String title3;
  final Widget box;
  final int index;

  const PaymentOptionButton({
    Key? key,
    required this.title,
    required this.title2,
    required this.title3,
    required this.box,
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
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: selected
                    ? Border.all(width: 2, color: AppColors.primaryColor)
                    : null,
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title, style: subscriptionpricetitle),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title2, style: pricetitle),
                        selected
                            ? const Icon(Icons.check_sharp,
                                size: 30, color: AppColors.primaryColor)
                            : Container()
                      ],
                    ),
                    const SizedBox(height: 3),
                    Text(title3, style: title3style)
                  ],
                )),
          ),
          Positioned(top: 0, right: 0, child: box),
        ],
      ),
    );
  }
}
