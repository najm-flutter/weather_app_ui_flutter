import 'package:flutter/material.dart';
import 'package:test_clip_path/core/clips_path/bg_bottom_bar_clip.dart';
import 'package:test_clip_path/core/clips_path/clip_shasow.dart';
import 'package:test_clip_path/core/constants/app_colors.dart';
import 'package:test_clip_path/core/constants/app_images.dart';

class BgBottomAndIcons extends StatelessWidget {
const BgBottomAndIcons({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Stack(
          children: [
            ClipShadow(
              clipper: BgBottomBarClip(),
              strokeColor: AppColors.otherThree,
              strokeWidth: 0.5,
              boxShadow: const [],
              child: Opacity(
                opacity: 0.26,
                child: Container(
                  height: 89,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          stops: const [0, 100],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.otherTow,
                            AppColors.otherOne,
                          ])),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 44, width: 44, child: Image.asset(AppImages.iconBottomTow)),
                  SizedBox(height: 44, width: 44, child: Image.asset(AppImages.iconBottomOne)),
                ],
              ),
            )
          ],
        );
  }
}