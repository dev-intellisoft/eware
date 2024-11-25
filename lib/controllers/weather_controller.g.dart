// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WeatherController on WeatherControllerBase, Store {
  late final _$recordsAtom =
      Atom(name: 'WeatherControllerBase.records', context: context);

  @override
  List<Weather> get records {
    _$recordsAtom.reportRead();
    return super.records;
  }

  @override
  set records(List<Weather> value) {
    _$recordsAtom.reportWrite(value, super.records, () {
      super.records = value;
    });
  }

  late final _$daysAtom =
      Atom(name: 'WeatherControllerBase.days', context: context);

  @override
  List<String> get days {
    _$daysAtom.reportRead();
    return super.days;
  }

  @override
  set days(List<String> value) {
    _$daysAtom.reportWrite(value, super.days, () {
      super.days = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'WeatherControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$fetchWeatherRecordsAsyncAction = AsyncAction(
      'WeatherControllerBase.fetchWeatherRecords',
      context: context);

  @override
  Future<void> fetchWeatherRecords() {
    return _$fetchWeatherRecordsAsyncAction
        .run(() => super.fetchWeatherRecords());
  }

  @override
  String toString() {
    return '''
records: ${records},
days: ${days},
isLoading: ${isLoading}
    ''';
  }
}
