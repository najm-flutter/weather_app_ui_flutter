import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_clip_path/core/clips_path/bottom_sheet_clip.dart';
import 'package:test_clip_path/core/constants/app_colors.dart';
import 'package:test_clip_path/core/constants/app_strings.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_sheet/filter_one_bottom_sheet.dart';

class TopBarBottomSheet extends StatefulWidget {
  const TopBarBottomSheet({super.key});

  @override
  State<TopBarBottomSheet> createState() => _TopBarBottomSheetState();
}

class _TopBarBottomSheetState extends State<TopBarBottomSheet> {
  int selected = 0;
  List<String> titles = [AppStrings.titeOne, AppStrings.titeTow];
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipPath(
          clipper: BottomSheetClip(),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _topPart(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                          2,
                          (index) => InkWell(
                            onTap: () => setState(() {
                              selected = index;
                            }),
                            child: _titleTopBar(titles[index], index == selected, index, context),
                          ),
                        )
                      ],
                    ),
                  ),
                  _divider()
                ],
              ),
            ),
          ),
        ),
        const FilterOneBottomSheet(),
      ],
    );
  }

  Widget _topPart() {
    return Container(
      height: 5,
      width: 48,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: AppColors.black.withOpacity(0.3), borderRadius: BorderRadius.circular(10)),
    );
  }

  Widget _titleTopBar(
    String title,
    bool isSelected,
    int index,
    BuildContext context,
  ) {
    return SizedBox(
      width: 130,
      child: Column(
        children: [
          const SizedBox(
            width: double.maxFinite,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          _selectView(isSelected),
        ],
      ),
    );
  }

  Widget _selectView(bool isSelected) {
    return AnimatedCrossFade(
      firstChild: Container(
        height: 3,
        width: 130,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          AppColors.white.withOpacity(0.01),
          AppColors.white.withOpacity(0.3),
          AppColors.white.withOpacity(0.01),
        ])),
      ),
      secondChild: const SizedBox(),
      crossFadeState: isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Durations.medium1,
    );
  }

  Widget _divider() {
    return Container(
      height: 1,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: AppColors.black.withOpacity(0.3),
          boxShadow: [BoxShadow(color: AppColors.white.withOpacity(0.2), offset: const Offset(0, -1))]),
    );
  }
}
