import 'package:flutter/material.dart';
import 'package:test_clip_path/core/constants/app_images.dart';

class BgHomePage extends StatelessWidget {
  const BgHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [_imageOne(), _imageTow(height)],
    );
  }

  Widget _imageOne() {
    return SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Image.asset(
        AppImages.bg,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _imageTow(double height) {
    return Padding(
      padding: EdgeInsets.only(bottom: height / 5),
      child: Image.asset(AppImages.house),
    );
  }
}
