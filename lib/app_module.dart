import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_app_modular/controllers/weather_controller.dart';
// import 'package:weather_app_modular/core/api.dart';
// import 'package:weather_app_modular/repositories/weather_repository.dart';
import 'package:weather_app_modular/views/home_page.dart';
import 'package:weather_app_modular/views/occurrence_page.dart';
import 'package:weather_app_modular/views/overview_page.dart';
import 'package:weather_app_modular/views/weather_page.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(WeatherController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child:(context) => const HomePage());
    r.child('/weather', child:(context) =>  WeatherPage(),
        children: [
          ChildRoute('/overview/:datetime', child: (context) => OverviewPage(datetime: r.args.params["datetime"],)),
        ]
    );
    r.child('/occurrence', child:(context) =>  OccurrencePage());
  }
}