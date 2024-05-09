import 'package:flutter/material.dart';
import 'package:test_clip_path/core/constants/app_images.dart';

class FilterTowBottomSheet extends StatelessWidget {
  const FilterTowBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: SizedBox(
        height: 337,
        width: double.maxFinite,
        child: Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 250,
            width: 250,
            child: Image.asset(
              AppImages.filterThree,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
