import 'package:flutter/material.dart';

import 'subscription.dart';
import 'utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SubScription Page',
      theme: lightThemeData,
      home: const SubScrptionPage(),
    );
  }
}
