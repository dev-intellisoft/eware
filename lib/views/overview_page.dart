import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_modular/models/weather_model.dart';

import '../controllers/weather_controller.dart';

class OverviewPage extends StatelessWidget {
  String datetime;
  final WeatherController controller = Modular.get<WeatherController>();
  OverviewPage({required this.datetime});
  @override
  Widget build(BuildContext context) {
    List<Weather> records = controller.records.where(
            (e) => DateFormat('yyyy-MM-dd').parse(e.datetime) == DateFormat('yyyy-MM-dd').parse(datetime)
    ).toList();
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('Max:${records.reduce((a, b) => a.temp > b.temp ? a : b).temp} °C'),
          Text('Min:${records.reduce((a, b) => a.temp < b.temp ? a : b).temp} °C'),
          Column(
            children: records.map((e) => Container(
              child: Column(
                children: [
                  Text('${DateFormat('H').format(DateFormat('yyyy-MM-dd:H').parse(e.datetime))}h'),
                  Text('Tempo:${e.description}'),
                  Text('Temperatura:${e.temp} °C'),
                ],
              ),
            )).toList(),
          )
        ],
      ),
    );
  }

}