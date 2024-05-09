import 'package:flutter/material.dart';
import 'package:test_clip_path/core/constants/app_colors.dart';
import 'package:test_clip_path/data/static.dart';
import 'package:test_clip_path/data/model/weather_model.dart';

class WeatherPart extends StatefulWidget {
  const WeatherPart({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WeatherPartState createState() => _WeatherPartState();
}

class _WeatherPartState extends State<WeatherPart> {
  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 66),
      height: 337,
      width: double.maxFinite,
      child: SizedBox(
        height: 146,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              WeatherModel weatherModel = StaticDtat.weatherData[index];
              return Stack(
                children: [
                  InkWell(
                      onTap: () => setState(() {
                            selected = index;
                          }),
                      child: _desing(
                          selected: selected,
                          index: index,
                          time: weatherModel.time,
                          image: weatherModel.image,
                          temperature: weatherModel.temperature))
                ],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
                  width: 0,
                ),
            itemCount: StaticDtat.weatherData.length),
      ),
    );
  }

  Widget _desing(
      {required int selected,
      required int index,
      required String time,
      required String image,
      required String temperature}) {
    return _bg(
        selected,
        index,
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 15, color: AppColors.white),
            ),
            SizedBox(
              height: 32,
              width: 32,
              child: Image.asset(image),
            ),
            Text(
              temperature,
              style: TextStyle(fontSize: 20, color: AppColors.white),
            ),
          ],
        ));
  }

  Widget _bg(int selected, int index, Widget widget) {
    return Container(
      margin: const EdgeInsets.only(left: 6, right: 6),
      padding: const EdgeInsets.symmetric(vertical: 16),
      height: 146,
      width: 60,
      decoration: BoxDecoration(
          color: selected == index ? AppColors.purple : null,
          gradient: selected != index
              ? LinearGradient(
                  stops: const [0, 100],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.purple.withOpacity(0.2),
                    AppColors.otherSix.withOpacity(0.2),
                  ])
              : null,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(color: AppColors.black.withOpacity(0.25), blurRadius: 10, offset: const Offset(5, 4)),
            BoxShadow(color: AppColors.white.withOpacity(0.25), blurStyle: BlurStyle.inner, offset: const Offset(1, 1)),
          ],
          border: Border.all(color: AppColors.white.withOpacity(selected == index ? 0.50 : 0.2))),
      child: widget,
    );
  }
}
