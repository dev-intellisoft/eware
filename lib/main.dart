import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:weather_app_modular/app_module.dart';
import 'package:weather_app_modular/app_widget.dart';
import 'package:weather_app_modular/models/occurrence_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(OccurrenceModelAdapter());
  await Hive.openBox<OccurrenceModel>('occurrences');
  runApp( ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
