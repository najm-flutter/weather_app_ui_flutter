import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_clip_path/core/clips_path/bottom_sheet_clip.dart';
import 'package:test_clip_path/core/clips_path/clip_shasow.dart';
import 'package:test_clip_path/core/constants/app_colors.dart';

class BgBottomSheet extends StatelessWidget {
  const BgBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipShadow(
      boxShadow: const [],
      strokeColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
      strokeWidth: 0.0,
      clipper: BottomSheetClip(),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
        child: Opacity(
          opacity: 0.26,
          child: Container(
            height: 337,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(44)),
                gradient: LinearGradient(
                    stops: const [0, 100],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: AppColors.linearGradientOne)),
          ),
        ),
      ),
    );
  }
}
