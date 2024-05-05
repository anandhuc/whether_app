import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:wheather_app/core/apikey.dart';

class WeatherApis {
  Future<Response> currentWeather({required double lat,required double lon}) async {
    var baseUrl = 'https://api.openweathermap.org/data/2.5/weather?lat={$lat}&lon={$lon}&appid={$apiKey}';
    Response response = await post(Uri.parse(baseUrl), body: {});
    log("WeatherApis >>>>> currentWeather >>>> ${response.body}");
    return response;
  }

}