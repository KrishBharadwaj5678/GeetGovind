import 'package:flutter/material.dart';
import 'package:geet_govind/constants/common_constants.dart';
import 'package:geet_govind/screens/geet_govind.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Geet Govind",
      debugShowCheckedModeBanner: false,
      theme: CommonConstants.appTheme,
      home: GeetGovind(),
    );
  }
}
