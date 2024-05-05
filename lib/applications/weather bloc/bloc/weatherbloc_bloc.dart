import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:weather/weather.dart';
import 'package:wheather_app/core/apikey.dart';
import 'package:wheather_app/infrastructure/get%20current%20location/get_location.dart';
import 'package:wheather_app/infrastructure/weather%20apis/weather_apis.dart';

part 'weatherbloc_event.dart';
part 'weatherbloc_state.dart';
part 'weatherbloc_bloc.freezed.dart';

class WeatherblocBloc extends Bloc<WeatherblocEvent, WeatherblocState> {
  WeatherblocBloc() : super(WeatherblocState.initial()) {
    on<GetCurrentWeather>((event, emit) async {
      emit(state.copyWith(
        isError: false,
        isLoading: true,
      ));
      Position position = await getlocation();
      double lat = position.latitude;
      double lon = position.longitude;
      log(' >>>>>>>> $lat      >>>>>>> $lon');
      try {
        // Response res = await WeatherApis().currentWeather(lat: lat, lon: lon);
        // log(res.body);
        WeatherFactory wf = WeatherFactory(
          apiKey,
          language: Language.ENGLISH,
        );
        Weather w = await wf.currentWeatherByLocation(lat, lon);
        List<Weather> wF = await wf.fiveDayForecastByLocation(lat, lon);
        log(wF.toString());

        emit(state.copyWith(
            isError: false, isLoading: false, weather: w, weatherF: wF));
      } catch (e) {
        emit(state.copyWith(
          isError: true,
          isLoading: false,
        ));
      }
    });

    on<GetCurrentWeatherByCityName>((event, emit) async {
      emit(state.copyWith(
        isError: false,
        isCityLoading: true,
      ));
    
      try {
        // Response res = await WeatherApis().currentWeather(lat: lat, lon: lon);
        // log(res.body);
        WeatherFactory wf = WeatherFactory(
          apiKey,
          language: Language.ENGLISH,
        );
        Weather wByCityname = await wf.currentWeatherByCityName(event.query);
        log('wByCityname   >>>'+wByCityname.toString());

        emit(state.copyWith(
            isError: false, isCityLoading: false, weatherByCityName: wByCityname));
      } catch (e) {
        emit(state.copyWith(
          isError: true,
          isCityLoading: false,
        ));
      }
    });
  }
}
