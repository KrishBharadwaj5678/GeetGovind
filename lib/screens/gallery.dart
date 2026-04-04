import 'package:flutter/material.dart';
import 'package:geet_govind/widgets/custom_app_bar.dart';
import 'package:geet_govind/widgets/custom_grid_view.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "गैलरी"),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        // Masonry style modern gallery UI
        child: CustomGridView(),
      ),
    );
  }
}
