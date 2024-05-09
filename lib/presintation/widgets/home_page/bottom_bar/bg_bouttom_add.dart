import 'package:flutter/material.dart';
import 'package:test_clip_path/core/clips_path/bg_button_add_clip.dart';
import 'package:test_clip_path/core/clips_path/clip_shasow.dart';
import 'package:test_clip_path/core/constants/app_colors.dart';

class BgBottonAdd extends StatelessWidget {
final Widget buttonAdd ;

  const BgBottonAdd({super.key, required this.buttonAdd});
  @override
  Widget build(BuildContext context){
    return ClipShadow(
            boxShadow: [ BoxShadow(color: AppColors.otherThree, blurRadius: 4, offset: const Offset(0, 4))],
            clipper: BgButtonAddClip(),
            strokeColor: AppColors.otherThree,
            strokeWidth: 0.5,
            child: Container(
              height: 100,
              width: 258,
              decoration:  BoxDecoration(
                boxShadow: [BoxShadow(color: AppColors.otherThree, blurRadius: 20, offset: const Offset(0, -100))],
                gradient: LinearGradient(
                    stops: const [0, 100],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                     AppColors.otherTow,
                     AppColors.otherOne,
                    ]),
              ),
              child:  Center(
                child: Center(child: buttonAdd),
              ),
            ),
          );
  }
}