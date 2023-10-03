import 'package:dio/dio.dart';
import 'package:weather_app/data/data_provider.dart';

final dio = Dio();

void getWeather() async {
  final response = await dio.get(
      'https://api.weatherapi.com/v1/forecast.json?key=976cc8cd002b482088135958231803&q=Hanoi');
  print(response.runtimeType);
}

void main() {
  getWeather();
}
