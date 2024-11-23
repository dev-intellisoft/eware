import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_app_modular/views/home_page.dart';
import 'package:weather_app_modular/views/occurrence_page.dart';
import 'package:weather_app_modular/views/weather_page.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child('/', child:(context) => const HomePage());
    r.child('/weather', child:(context) => const WeatherPage());
    r.child('/occurrence', child:(context) => const OccurrencePage());
  }
}