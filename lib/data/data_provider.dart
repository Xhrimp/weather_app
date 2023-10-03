import 'package:dio/dio.dart';
import 'dart:convert';

class GetWeatherInfo {
  final dio = Dio();
  void getWeather() async {
    var response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=976cc8cd002b482088135958231803&q=Hanoi');
    return response;
  }
}

// void main() {
//   getWeather();
// }


  // String time = data['location']['localtime'];
  // String location = data['location']['name'];
  // double temp_c = data['current']['temp_c'];
  // String condition_icon = data['condition']['icon'];
  // // final statusCode = response.statusCode;

  // print(temp_c);