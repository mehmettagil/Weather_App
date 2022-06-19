import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/model/weather_model.dart';
class WeatherApiClient{
  Future<WeatherModel>? getCurrentWeather(String? location) async{
    var endpoint = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$location&appid=471abb7ebb53197625e382416c859588&units=metric');
    var response = await http.get(endpoint);
    var body = jsonDecode(utf8.decode(response.bodyBytes));
    WeatherModel weatherModel = WeatherModel.fromJson(body);
    return WeatherModel.fromJson(body);

  }

}