import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_app_modular/core/api.dart';
import 'package:weather_app_modular/models/weather_model.dart';

part 'weather_controller.g.dart';

class WeatherController = WeatherControllerBase with _$WeatherController;

abstract class WeatherControllerBase extends Api with Store  {
  @observable
  List<Weather> records = <Weather>[];

  @observable
  List<String> days = <String>[];

  @observable
  bool isLoading = false;

  @action
  Future<void> fetchWeatherRecords () async {
    isLoading = true;
    records = <Weather>[];
      var response = await dio.get('/forecast/hourly?lat=-25.4284&lon=-49.2733&units=metric&lang=pt');
      if (response.statusCode == 200 && response.data["data"] != null) {
        for(var json in response.data["data"]) {
          records.add(Weather.fromJson(json));
        }
        days = listDays(records);
      }
      isLoading = false;
  }


  List<String> listDays(List<Weather> weathers) {
    List<String> days = <String>[];
    for (var w in weathers) {
      DateTime dateTime = DateFormat("yyyy-MM-dd:HH").parse(w.datetime);
      String dateKey = DateFormat("yyyy-MM-dd").format(dateTime);
      if (!days.contains(dateKey)) {
        days.add(dateKey);
      }
    }
    return days;
  }
}