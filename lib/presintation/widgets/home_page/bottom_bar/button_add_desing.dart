import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test_clip_path/core/clips_path/circle_clip.dart';
import 'package:test_clip_path/core/constants/app_colors.dart';
import 'package:test_clip_path/presintation/widgets/home_page/bottom_bar/bg_bouttom_add.dart';

class ButtonAddDesing extends StatefulWidget {
  const ButtonAddDesing({super.key});

  @override
  State<ButtonAddDesing> createState() => _ButtonAddDesingState();
}

class _ButtonAddDesingState extends State<ButtonAddDesing> {
  double angle = 0.0;
  @override
  Widget build(BuildContext context) {
    return BgBottonAdd(
      buttonAdd: Stack(
        alignment: Alignment.center,
        children: [_partOneOfBotton(), _partTowOfBoutton(), _partThreeOfBoutton()],
      ),
    );
  }

  Widget _partOneOfBotton() {
    //! Background Boutton
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Opacity(
          opacity: 0.40,
          child: Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: const [0, 100],
                    colors: [AppColors.black, AppColors.white.withOpacity(0.76)])),
          ),
        ),
      ),
    );
  }

  Widget _partTowOfBoutton() {
    return Container(
      height: 58,
      width: 58,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 0.2, color: AppColors.whiteBlue),
          boxShadow: [
            BoxShadow(color: AppColors.white, blurStyle: BlurStyle.inner, blurRadius: 0.5, offset: const Offset(1, 1)),
            BoxShadow(color: AppColors.white.withOpacity(0.5), blurRadius: 20, offset: const Offset(-10, -10)),
            BoxShadow(color: AppColors.purpleBigDark.withOpacity(0.5), blurRadius: 20, offset: const Offset(10, 10)),
          ],
          gradient: LinearGradient(
              stops: const [0, 100],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.whiteTow, AppColors.whiteBlue])),
    );
  }

  Widget _partThreeOfBoutton() {
    return  ClipPath(
      clipper: CircleClip(),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 2, sigmaX: 2),
        child: Container(
          height: 52,
          width: 52,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 0.2, color: AppColors.whiteBlue),
              gradient: LinearGradient(
                  stops: const [0, 100],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.grayBlue, AppColors.white])),
          child: AnimatedRotation(
            turns: angle,
            duration: Durations.short4,
            child: InkWell(
              onTap: () {
                setState(() {
                  angle = angle == 0 ? 0.125 : 0;
                });
              },
              child: Icon(
                Icons.add_rounded,
                size: 44,
                color: AppColors.purple,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
