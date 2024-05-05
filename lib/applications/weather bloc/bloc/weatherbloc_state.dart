part of 'weatherbloc_bloc.dart';

@freezed
class WeatherblocState with _$WeatherblocState {
  factory WeatherblocState({
    required bool isLoading,
    required bool isCityLoading,
    required bool isError,
     Weather? weather,
     Weather? weatherByCityName,
     List<Weather>? weatherF
  }) = _WeatherblocState;
  factory WeatherblocState.initial() {
    return WeatherblocState(
      isCityLoading: false,
      isError: false,
      isLoading: true,
      
    );
  }
}
