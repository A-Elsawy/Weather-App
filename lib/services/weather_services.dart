import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '40bebc40a1cf48259df180145231512';

  WeatherServices(this.dio);

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (error) {
      final String errorMessage = error.response?.data['error']['message'] ??
          "Opps..!! there was an error, please try later.";

      throw Exception(errorMessage);
    } catch (error) {
      log(error.toString());
      throw Exception('Opps..!!');
    }
  }
}
