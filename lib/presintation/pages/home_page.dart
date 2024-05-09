import 'package:flutter/material.dart';
import 'package:test_clip_path/core/constants/app_colors.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bg_home_page.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_bar_desing.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_sheet_desing.dart';
import 'package:test_clip_path/presintation/widgets/home_page/title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.otherFour,
      body: const Stack(
        alignment: Alignment.bottomCenter,
        children: [BgHomePage(), BottomSheetDesing(), BottomBarDesing(), TitleHomePage()],
      ),
    );
  }
}
