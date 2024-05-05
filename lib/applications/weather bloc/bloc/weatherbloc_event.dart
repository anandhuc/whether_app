part of 'weatherbloc_bloc.dart';

@freezed
class WeatherblocEvent with _$WeatherblocEvent {
  const factory WeatherblocEvent.getCurrentWeather() = GetCurrentWeather;
  const factory WeatherblocEvent.getCurrentWeatherByCityName({required String query}) = GetCurrentWeatherByCityName;
  
}