// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weatherbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherblocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentWeather,
    required TResult Function(String query) getCurrentWeatherByCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentWeather,
    TResult? Function(String query)? getCurrentWeatherByCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentWeather,
    TResult Function(String query)? getCurrentWeatherByCityName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentWeather value) getCurrentWeather,
    required TResult Function(GetCurrentWeatherByCityName value)
        getCurrentWeatherByCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCurrentWeather value)? getCurrentWeather,
    TResult? Function(GetCurrentWeatherByCityName value)?
        getCurrentWeatherByCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentWeather value)? getCurrentWeather,
    TResult Function(GetCurrentWeatherByCityName value)?
        getCurrentWeatherByCityName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherblocEventCopyWith<$Res> {
  factory $WeatherblocEventCopyWith(
          WeatherblocEvent value, $Res Function(WeatherblocEvent) then) =
      _$WeatherblocEventCopyWithImpl<$Res, WeatherblocEvent>;
}

/// @nodoc
class _$WeatherblocEventCopyWithImpl<$Res, $Val extends WeatherblocEvent>
    implements $WeatherblocEventCopyWith<$Res> {
  _$WeatherblocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrentWeatherImplCopyWith<$Res> {
  factory _$$GetCurrentWeatherImplCopyWith(_$GetCurrentWeatherImpl value,
          $Res Function(_$GetCurrentWeatherImpl) then) =
      __$$GetCurrentWeatherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentWeatherImplCopyWithImpl<$Res>
    extends _$WeatherblocEventCopyWithImpl<$Res, _$GetCurrentWeatherImpl>
    implements _$$GetCurrentWeatherImplCopyWith<$Res> {
  __$$GetCurrentWeatherImplCopyWithImpl(_$GetCurrentWeatherImpl _value,
      $Res Function(_$GetCurrentWeatherImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentWeatherImpl implements GetCurrentWeather {
  const _$GetCurrentWeatherImpl();

  @override
  String toString() {
    return 'WeatherblocEvent.getCurrentWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentWeatherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentWeather,
    required TResult Function(String query) getCurrentWeatherByCityName,
  }) {
    return getCurrentWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentWeather,
    TResult? Function(String query)? getCurrentWeatherByCityName,
  }) {
    return getCurrentWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentWeather,
    TResult Function(String query)? getCurrentWeatherByCityName,
    required TResult orElse(),
  }) {
    if (getCurrentWeather != null) {
      return getCurrentWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentWeather value) getCurrentWeather,
    required TResult Function(GetCurrentWeatherByCityName value)
        getCurrentWeatherByCityName,
  }) {
    return getCurrentWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCurrentWeather value)? getCurrentWeather,
    TResult? Function(GetCurrentWeatherByCityName value)?
        getCurrentWeatherByCityName,
  }) {
    return getCurrentWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentWeather value)? getCurrentWeather,
    TResult Function(GetCurrentWeatherByCityName value)?
        getCurrentWeatherByCityName,
    required TResult orElse(),
  }) {
    if (getCurrentWeather != null) {
      return getCurrentWeather(this);
    }
    return orElse();
  }
}

abstract class GetCurrentWeather implements WeatherblocEvent {
  const factory GetCurrentWeather() = _$GetCurrentWeatherImpl;
}

/// @nodoc
abstract class _$$GetCurrentWeatherByCityNameImplCopyWith<$Res> {
  factory _$$GetCurrentWeatherByCityNameImplCopyWith(
          _$GetCurrentWeatherByCityNameImpl value,
          $Res Function(_$GetCurrentWeatherByCityNameImpl) then) =
      __$$GetCurrentWeatherByCityNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$GetCurrentWeatherByCityNameImplCopyWithImpl<$Res>
    extends _$WeatherblocEventCopyWithImpl<$Res,
        _$GetCurrentWeatherByCityNameImpl>
    implements _$$GetCurrentWeatherByCityNameImplCopyWith<$Res> {
  __$$GetCurrentWeatherByCityNameImplCopyWithImpl(
      _$GetCurrentWeatherByCityNameImpl _value,
      $Res Function(_$GetCurrentWeatherByCityNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$GetCurrentWeatherByCityNameImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCurrentWeatherByCityNameImpl implements GetCurrentWeatherByCityName {
  const _$GetCurrentWeatherByCityNameImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'WeatherblocEvent.getCurrentWeatherByCityName(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentWeatherByCityNameImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrentWeatherByCityNameImplCopyWith<_$GetCurrentWeatherByCityNameImpl>
      get copyWith => __$$GetCurrentWeatherByCityNameImplCopyWithImpl<
          _$GetCurrentWeatherByCityNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentWeather,
    required TResult Function(String query) getCurrentWeatherByCityName,
  }) {
    return getCurrentWeatherByCityName(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentWeather,
    TResult? Function(String query)? getCurrentWeatherByCityName,
  }) {
    return getCurrentWeatherByCityName?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentWeather,
    TResult Function(String query)? getCurrentWeatherByCityName,
    required TResult orElse(),
  }) {
    if (getCurrentWeatherByCityName != null) {
      return getCurrentWeatherByCityName(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentWeather value) getCurrentWeather,
    required TResult Function(GetCurrentWeatherByCityName value)
        getCurrentWeatherByCityName,
  }) {
    return getCurrentWeatherByCityName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCurrentWeather value)? getCurrentWeather,
    TResult? Function(GetCurrentWeatherByCityName value)?
        getCurrentWeatherByCityName,
  }) {
    return getCurrentWeatherByCityName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentWeather value)? getCurrentWeather,
    TResult Function(GetCurrentWeatherByCityName value)?
        getCurrentWeatherByCityName,
    required TResult orElse(),
  }) {
    if (getCurrentWeatherByCityName != null) {
      return getCurrentWeatherByCityName(this);
    }
    return orElse();
  }
}

abstract class GetCurrentWeatherByCityName implements WeatherblocEvent {
  const factory GetCurrentWeatherByCityName({required final String query}) =
      _$GetCurrentWeatherByCityNameImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$GetCurrentWeatherByCityNameImplCopyWith<_$GetCurrentWeatherByCityNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherblocState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isCityLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  Weather? get weather => throw _privateConstructorUsedError;
  Weather? get weatherByCityName => throw _privateConstructorUsedError;
  List<Weather>? get weatherF => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherblocStateCopyWith<WeatherblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherblocStateCopyWith<$Res> {
  factory $WeatherblocStateCopyWith(
          WeatherblocState value, $Res Function(WeatherblocState) then) =
      _$WeatherblocStateCopyWithImpl<$Res, WeatherblocState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isCityLoading,
      bool isError,
      Weather? weather,
      Weather? weatherByCityName,
      List<Weather>? weatherF});
}

/// @nodoc
class _$WeatherblocStateCopyWithImpl<$Res, $Val extends WeatherblocState>
    implements $WeatherblocStateCopyWith<$Res> {
  _$WeatherblocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isCityLoading = null,
    Object? isError = null,
    Object? weather = freezed,
    Object? weatherByCityName = freezed,
    Object? weatherF = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCityLoading: null == isCityLoading
          ? _value.isCityLoading
          : isCityLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      weatherByCityName: freezed == weatherByCityName
          ? _value.weatherByCityName
          : weatherByCityName // ignore: cast_nullable_to_non_nullable
              as Weather?,
      weatherF: freezed == weatherF
          ? _value.weatherF
          : weatherF // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherblocStateImplCopyWith<$Res>
    implements $WeatherblocStateCopyWith<$Res> {
  factory _$$WeatherblocStateImplCopyWith(_$WeatherblocStateImpl value,
          $Res Function(_$WeatherblocStateImpl) then) =
      __$$WeatherblocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isCityLoading,
      bool isError,
      Weather? weather,
      Weather? weatherByCityName,
      List<Weather>? weatherF});
}

/// @nodoc
class __$$WeatherblocStateImplCopyWithImpl<$Res>
    extends _$WeatherblocStateCopyWithImpl<$Res, _$WeatherblocStateImpl>
    implements _$$WeatherblocStateImplCopyWith<$Res> {
  __$$WeatherblocStateImplCopyWithImpl(_$WeatherblocStateImpl _value,
      $Res Function(_$WeatherblocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isCityLoading = null,
    Object? isError = null,
    Object? weather = freezed,
    Object? weatherByCityName = freezed,
    Object? weatherF = freezed,
  }) {
    return _then(_$WeatherblocStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCityLoading: null == isCityLoading
          ? _value.isCityLoading
          : isCityLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      weatherByCityName: freezed == weatherByCityName
          ? _value.weatherByCityName
          : weatherByCityName // ignore: cast_nullable_to_non_nullable
              as Weather?,
      weatherF: freezed == weatherF
          ? _value._weatherF
          : weatherF // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ));
  }
}

/// @nodoc

class _$WeatherblocStateImpl implements _WeatherblocState {
  _$WeatherblocStateImpl(
      {required this.isLoading,
      required this.isCityLoading,
      required this.isError,
      this.weather,
      this.weatherByCityName,
      final List<Weather>? weatherF})
      : _weatherF = weatherF;

  @override
  final bool isLoading;
  @override
  final bool isCityLoading;
  @override
  final bool isError;
  @override
  final Weather? weather;
  @override
  final Weather? weatherByCityName;
  final List<Weather>? _weatherF;
  @override
  List<Weather>? get weatherF {
    final value = _weatherF;
    if (value == null) return null;
    if (_weatherF is EqualUnmodifiableListView) return _weatherF;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeatherblocState(isLoading: $isLoading, isCityLoading: $isCityLoading, isError: $isError, weather: $weather, weatherByCityName: $weatherByCityName, weatherF: $weatherF)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherblocStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isCityLoading, isCityLoading) ||
                other.isCityLoading == isCityLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.weatherByCityName, weatherByCityName) ||
                other.weatherByCityName == weatherByCityName) &&
            const DeepCollectionEquality().equals(other._weatherF, _weatherF));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isCityLoading,
      isError,
      weather,
      weatherByCityName,
      const DeepCollectionEquality().hash(_weatherF));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherblocStateImplCopyWith<_$WeatherblocStateImpl> get copyWith =>
      __$$WeatherblocStateImplCopyWithImpl<_$WeatherblocStateImpl>(
          this, _$identity);
}

abstract class _WeatherblocState implements WeatherblocState {
  factory _WeatherblocState(
      {required final bool isLoading,
      required final bool isCityLoading,
      required final bool isError,
      final Weather? weather,
      final Weather? weatherByCityName,
      final List<Weather>? weatherF}) = _$WeatherblocStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isCityLoading;
  @override
  bool get isError;
  @override
  Weather? get weather;
  @override
  Weather? get weatherByCityName;
  @override
  List<Weather>? get weatherF;
  @override
  @JsonKey(ignore: true)
  _$$WeatherblocStateImplCopyWith<_$WeatherblocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
