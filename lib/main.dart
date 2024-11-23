import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_app_modular/app_module.dart';
import 'package:weather_app_modular/app_widget.dart';

void main() {
  runApp( ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
