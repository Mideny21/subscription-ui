import 'package:flutter/material.dart';

import 'utils/app_colors.dart';
import 'widgets/commons/custom_button.dart';
import 'widgets/commons/custom_text_field.dart';
import 'widgets/payment_button.dart';
import 'widgets/recommend.dart';

class SubScrptionPage extends StatefulWidget {
  const SubScrptionPage({super.key});

  @override
  State<SubScrptionPage> createState() => _SubScrptionPageState();
}

class _SubScrptionPageState extends State<SubScrptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgrdColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Icon(Icons.inventory_outlined,
                size: 90, color: AppColors.buttonColor),
            const SizedBox(height: 8),
            const Text("Subscription", style: subscriptionStyle),
            const SizedBox(height: 10),
            const Text(
                "Subscription today for a discount off our standars rates",
                textAlign: TextAlign.center,
                style: descriptionStyle),
            const SizedBox(height: 20),
            const PaymentOptionButton(
                box: Recommend(),
                title: "Yearly Save 20%",
                title2: "\$${95.99}/year",
                title3: "Billed annually at \$${124.99} after 1st year",
                index: 0),
            const SizedBox(height: 15),
            PaymentOptionButton(
                box: Container(),
                title: "Monthly",
                title2: "\$${9.99}/month",
                title3: "\$${0.99} for the 1st month",
                index: 1),
            const SizedBox(height: 40),
            const Icon(Icons.info_outline,
                color: AppColors.buttonColor, size: 35),
            const SizedBox(height: 14),
            const Text(
                "No commitment required Cancel anytime. Payment for our subscription will be automatically",
                textAlign: TextAlign.center,
                style: commitmentStyle),
            const SizedBox(height: 18),
            CustomButton(
              text: "Subscribe",
              tap: () {},
            ),
            const SizedBox(height: 14),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Continue without subscribing",
                  style: buttonstyle,
                )),
          ]),
        ),
      )),
    );
  }
}
