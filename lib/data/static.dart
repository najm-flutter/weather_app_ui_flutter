import 'package:test_clip_path/core/constants/app_images.dart';
import 'package:test_clip_path/data/model/weather_model.dart';

class StaticDtat {
  static List<WeatherModel> weatherData = [
      WeatherModel(time: '12 AM', image: AppImages.weatherRain, temperature: "19") ,
      WeatherModel(time: '1 PM', image: AppImages.weatherWind, temperature: "18") ,
      WeatherModel(time: 'NOW', image: AppImages.weatherRain, temperature: "19") ,
      WeatherModel(time: '2 PM', image: AppImages.weatherRain, temperature: "19") ,
      WeatherModel(time: '3 PM', image: AppImages.weatherRain, temperature: "19") ,
      WeatherModel(time: '4 PM', image: AppImages.weatherWind, temperature: "17") ,
      WeatherModel(time: '5 PM', image: AppImages.weatherRain, temperature: "20") ,
      WeatherModel(time: '6 PM', image: AppImages.weatherWind, temperature: "18") ,
      WeatherModel(time: '7 PM', image: AppImages.weatherWind, temperature: "19") ,
   ] ; 
}