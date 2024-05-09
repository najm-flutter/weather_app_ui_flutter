import 'package:flutter/material.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_sheet/bg_bottom_sheet.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_sheet/filter_one_bottom_sheet.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_sheet/filter_tow_bottom_sheet.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_sheet/top_bar_bottom_sheet.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_sheet/weather_part.dart';

class BottomSheetDesing extends StatelessWidget {
  const BottomSheetDesing({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            BgBottomSheet(),
            FilterOneBottomSheet(),
            TopBarBottomSheet(),
            WeatherPart(),
            FilterTowBottomSheet()
          ],
        ),
      ],
    );
  }
}
