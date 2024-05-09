import 'package:flutter/material.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_bar/bg_bottom_and_icons.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_bar/button_add_desing.dart';

class BottomBarDesing extends StatelessWidget {
  const BottomBarDesing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomCenter,
      children: [
        BgBottomAndIcons(),
        ButtonAddDesing(),
      ],
    );
  }
}
