import 'package:flutter/material.dart';
import 'package:geet_govind/constants/common_constants.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: CommonConstants.appBarBackgroundColor,
      foregroundColor: CommonConstants.appBarTextColor,
    );
  }
}
