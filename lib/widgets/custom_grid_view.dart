import 'package:flutter/material.dart';
import 'package:geet_govind/screens/full_screen_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: 41,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => FullScreenImage(
                  imagePath: "assets/gallery/Jagannath${index + 1}.jpg",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/gallery/Jagannath${index + 1}.jpg",
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
