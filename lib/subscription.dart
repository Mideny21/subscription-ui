import 'package:flutter/material.dart';

import 'utils/app_colors.dart';
import 'widgets/commons/custom_button.dart';
import 'widgets/payment_button.dart';

class SubScrptionPage extends StatefulWidget {
  const SubScrptionPage({super.key});

  @override
  State<SubScrptionPage> createState() => _SubScrptionPageState();
}

class _SubScrptionPageState extends State<SubScrptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.inventory_outlined, size: 90),
                Text(
                  "Subscription",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "Subscription today for a discount off our standars rates",
                  textAlign: TextAlign.center,
                ),
                PaymentOptionButton(
                    title: "Yearly Save  20%",
                    title2: "95.90/year",
                    title3: "Billed annually at ${124.99} after 1st year",
                    index: 0),
                const SizedBox(height: 15),
                PaymentOptionButton(
                    title: "Monthly",
                    title2: "9.99/month",
                    title3: "${0.99} for the 1st month",
                    index: 1),
                const SizedBox(height: 20),
                CustomButton(
                  text: "Subscribe",
                  tap: () {},
                )
              ]),
        ),
      )),
    );
  }
}
