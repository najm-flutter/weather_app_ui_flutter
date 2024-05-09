import 'package:flutter/material.dart';
import 'package:test_clip_path/core/constants/app_images.dart';

class FilterOneBottomSheet extends StatelessWidget {
  const FilterOneBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(AppImages.filterTow),
          Image.asset(AppImages.filterOne),
        ],
      ),
    );
  }
}
